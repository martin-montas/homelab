# My pihole Deployment


This is my Pihole deployment for my homelab.
I run it as an LXC container on Proxmox.

For now this directory just adds a local dns record to Pihole.
soon there will be the actual deployment of it with Ansible.

## how to use it

This is a work in progress, but to add a local dns record to pihole you can use the following command:

```bash
        ansible-playbook -i /etc/ansible/hosts add-IP-local-DNS-record.yaml
```


## SOON:

- [ ] add the pihole deployment with ansible
- [x] be able to add a local dns record to pihole













