rememeber to create this and put them inside vaultwarden namespace





```bash
openssl req -x509 -nodes -days 365 \
  -newkey rsa:2048 \
  -out vaultwarden.crt \
  -keyout vaultwarden.key \
  -subj "/CN=example.com"
```



```bash
kubectl create secret tls vaultwarden-cert \
  --cert=vaultwarden.crt \
  --key=vaultwarden.key \
  -n vaultwarden
```
