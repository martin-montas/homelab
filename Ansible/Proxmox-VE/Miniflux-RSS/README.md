# Miniflux
This miniflux app. Its an RSS feed aggregator that its self hosted and fast and minimal.
I came up with the idea or running it with a persistent volume attach to an nfs server.
for backup.

## how to run it:

This is what i did:

```bash

kubectl  apply -f 1.miniflux-ns.yaml
kubectl  apply -f 2.nfs-pv.yaml
kubectl  apply -f 3.nfs-pvc.yaml
kubectl  apply -f 4.miniflux.yaml

# and finally
kubectl  apply -f 5.miniflux-service.yaml
# on the last file you can specify which port you want to expose on the slave node
# for the service

```





