### Miniflux RSS reader deployment


* Create namespace
```bash
kubectl create ns miniflux
```

* Run secrets
```bash
kubectl apply -f miniflux-secrets.yaml
```


* Run main manifest file
```bash
kubectl apply -f miniflux.yaml
```

*  Run the persistent volume claim
```bash
kubectl apply -f miniflux-pvc.yaml
```
