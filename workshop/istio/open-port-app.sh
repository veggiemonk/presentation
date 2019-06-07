function jaeger() {
open http://localhost:16686 # browser to jaeger
kubectl port-forward -n istio-system $(kubectl get pod -n istio-system -l app=jaeger -o jsonpath='{.items[0].metadata.name}') 16686:16686 # TRACING jaeger
}

function grafana() {
open http://localhost:3000/dashboard/db/istio-dashboard  # browser to graphana
kubectl -n istio-system port-forward $(kubectl -n istio-system get pod -l app=grafana -o jsonpath='{.items[0].metadata.name}') 3000:3000 # GRAFANA
}

function prometheus() {
open http://localhost:9090/graph
kubectl -n istio-system port-forward $(kubectl -n istio-system get pod -l app=prometheus -o jsonpath='{.items[0].metadata.name}') 9090:9090 # PROMETHEUS
}

function kiali() {
open http://localhost:20001/kiali # admin/admin
kubectl -n istio-system port-forward $(kubectl -n istio-system get pod -l app=kiali -o jsonpath='{.items[0].metadata.name}') 20001:20001 # KIALI
}
