



export KUBECONFIG="$(kind get kubeconfig-path --name="kind")"
kubectl cluster-info

linkerd check --pre

linkerd install config | kubectl apply -f -
linkerd install control-plane | kubectl apply -f -
linkerd check

kubectl -n openfaas get deploy gateway -o yaml | linkerd inject --skip-outbound-ports=4222 - | kubectl apply -f -
kubectl -n openfaas get deploy/basic-auth-plugin -o yaml | linkerd inject - | kubectl apply -f -
kubectl -n openfaas get deploy/faas-idler -o yaml | linkerd inject - | kubectl apply -f -
kubectl -n openfaas get deploy/queue-worker -o yaml | linkerd inject  --skip-outbound-ports=4222 - | kubectl apply -f -

kubectl annotate namespace openfaas-fn linkerd.io/inject=enabled

kubectl -n openfaas-fn get deploy -o yaml | linkerd inject - | kubectl apply -f -

kubectl port-forward pod/$(kubectl get pod -l app=gateway -o jsonpath="{.items[0].metadata.name}") 8080:8080

hey -z=30s -c 8 -m GET -d=Test http://localhost:8080/function/echo
