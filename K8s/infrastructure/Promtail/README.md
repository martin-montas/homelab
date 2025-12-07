# What to do:


### install grafana helm chart

```bash
helm repo add grafana https://grafana.github.io/helm-charts
helm repo update
```

### remember to update the promtail-values.yaml IP value to the loki service of your choice
```bash
helm install promtail grafana/promtail -f promtail-values.yaml -n monitoring --create-namespace
```

