# Clone vm k3s workers

- to clone the vm k3s workers

```bash
ansible-playbook -i hosts ubuntu-vm-k3s-worker.yaml
```

make sure to change the `vars.yaml` file with the correct values

**NOTE**

Make sure to enable the firewall on the vm k3s workers.
This repo  will be updated soon with this.

- [ ] Add the firewall on the vm k3s workers
- [x] Add the the server to a k3s cluster


