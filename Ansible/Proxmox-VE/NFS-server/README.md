# Miniflux
This miniflux app. Its an RSS feed aggregator that its self hosted and fast and minimal.
I came up with the idea or running it with a persistent volume attach to an nfs server.
for backup.

## how to run it:

This is what i did:

```bash

kubectl create namespace miniflux
kubectl apply -f miniflux-pv.yaml
kubectl apply -f miniflux-pvc.yaml
kubectl apply -f miniflux.yaml

# and finally
kubectl apply -f miniflux-service.yaml
# on the last file you can specify which port you want to expose on the slave node
# for the service

```





