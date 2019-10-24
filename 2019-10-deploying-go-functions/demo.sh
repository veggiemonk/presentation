
# create gke cluster

# install linkerd

linkerd check --pre

linkerd install config | kubectl apply -f -
linkerd install control-plane | kubectl apply -f -
linkerd check


# create openfaas yaml
helm template faas-netes/chart/openfaas \
    --name openfaas \
    --namespace openfaas \
    --set basic_auth=true \
    --set functionNamespace=openfaas-fn > openfaas_from_helm.yaml

# install openfaas
kubectl apply -f openfaas_from_helm.yaml


# Connect openfaas to linkerd

kubectl -n openfaas get deploy gateway -o yaml | linkerd inject --skip-outbound-ports=4222 - | kubectl apply -f -
kubectl -n openfaas get deploy/basic-auth-plugin -o yaml | linkerd inject - | kubectl apply -f -
kubectl -n openfaas get deploy/faas-idler -o yaml | linkerd inject - | kubectl apply -f -
kubectl -n openfaas get deploy/queue-worker -o yaml | linkerd inject  --skip-outbound-ports=4222 - | kubectl apply -f -

kubectl annotate namespace openfaas-fn linkerd.io/inject=enabled

kubectl -n openfaas-fn get deploy -o yaml | linkerd inject - | kubectl apply -f -

# Portfoward if local server
kubectl port-forward pod/$(kubectl get pod -l app=gateway -o jsonpath="{.items[0].metadata.name}") 8080:8080

# Portfoward if remote cluster
kubectl port-forward svc/gateway -n openfaas 8080:8080


# open linkerd dashboard
linkerd dashboard


# deploy cowsay and test it

hey -z=30s -c 8 -m GET http://localhost:8080/function/cows
hey -z=30s -c 16 -m GET http://localhost:8080/function/cows



# cloud run demo

export PROJECT_ID=$(gcloud config list --format 'value(core.project)')

export FUNCTION_URL="https://pigo-openfaas-sdouayl7ha-uc.a.run.app"
export IMG_URL="https://upload.wikimedia.org/wikipedia/commons/thumb/c/cc/NASA_Astronaut_Group_18.jpg/1200px-NASA_Astronaut_Group_18.jpg" ;

curl -H 'Content-Type: binary/octet-stream' --data-binary "${IMG_URL}" "${FUNCTION_URL}" > target.jpg
