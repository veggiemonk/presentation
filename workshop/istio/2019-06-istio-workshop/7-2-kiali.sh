POD=$(kubectl -n istio-system get pod -l app=kiali -o jsonpath='{.items[0].metadata.name}')

echo "kubectl -n istio-system port-forward "$POD" 8080:20001"

kubectl -n istio-system port-forward "$POD" 8080:20001

