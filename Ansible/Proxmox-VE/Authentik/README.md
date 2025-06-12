# Authetik

This a simple Helm chart deployment on for k3s.

```bash
helm install authentik authentik/authentik --namespace default -f helm-deployment.yaml -f values.yaml
```

Make sure to specify the values.yaml with the proper secrets on the `values.yaml` that can be given by running 
this command on linux

```bash
openssl rand -base64 32  # This will generate a 32 character string
```

