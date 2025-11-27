# to deploy npm first create the initial namespace defined on the manifests files

```bash
kubectl create namespace npm
```

# second, create these secrets on the command line


```bash
kubectl create secret generic my-app-secret \
  --namespace npm \
  --from-literal=username=npmuser \
  --from-literal=password=npmpassword
```
