gcloud beta container --project "$DEVSHELL_PROJECT_ID" clusters create "istio-demo-02" \
--zone "europe-north1-a" --no-enable-basic-auth \
--cluster-version "latest" \
--machine-type "n1-standard-2" \
--image-type "COS" \
--disk-type "pd-standard" \
--disk-size "100" \
--metadata disable-legacy-endpoints=true \
--scopes "https://www.googleapis.com/auth/devstorage.read_only",\
"https://www.googleapis.com/auth/logging.write",\
"https://www.googleapis.com/auth/monitoring",\
"https://www.googleapis.com/auth/servicecontrol",\
"https://www.googleapis.com/auth/service.management.readonly",\
"https://www.googleapis.com/auth/trace.append" \
--min-cpu-platform "Intel Skylake" \
--num-nodes "4" \
--enable-stackdriver-kubernetes \
--enable-ip-alias \
--network "projects/dpe-dev-e1296334/global/networks/default" \
--subnetwork "projects/dpe-dev-e1296334/regions/europe-north1/subnetworks/default" \
--default-max-pods-per-node "110" \
--enable-network-policy \
--addons HorizontalPodAutoscaling,HttpLoadBalancing \
--enable-autoupgrade \
--enable-autorepair \
--enable-vertical-pod-autoscaling
