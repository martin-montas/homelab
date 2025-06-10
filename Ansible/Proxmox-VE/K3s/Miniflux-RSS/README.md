# values.yaml

##  you should include this on you values.yaml  

```yaml
env:
  CREATE_ADMIN: "1"  # Enable admin user creation
  ADMIN_USERNAME: "admin"
  ADMIN_PASSWORD: "<password>"
  TZ: "America/New_York"

service:
  main:
    type: NodePort
    nodePort: 31080
```

then run:

```bash
  helm install --install miniflux gabe565/miniflux \ 
  --namespace miniflux --create-namespace \ 
  -f values.yaml
  ```

credit for this is to [https://github.com/gabe565/miniflux](https://github.com/gabe565/miniflux)
