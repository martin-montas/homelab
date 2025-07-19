#  the grafana Loki deployment was done through a helm chart
**notes**
- this directory is for the loki deployment
- the loki deployment was done through a helm chart
- this deployment needs testing
- should'nt be run on a production system



```bash

kubectl create secret generic grafana-admin-secret \
  --namespace monitoring \
  --from-literal=admin-password=<PASSWORD>

```


the namespace  `monitoring` needs to be created first














