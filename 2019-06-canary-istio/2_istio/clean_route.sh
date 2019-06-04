ROOT="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." && pwd )"

echo "kubectl delete -f \"${ROOT}/istio/samples/bookinfo/networking/virtual-service-all-v1.yaml\""
kubectl delete -f "${ROOT}/istio/samples/bookinfo/networking/virtual-service-all-v1.yaml"
