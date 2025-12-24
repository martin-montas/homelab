terraform {
  required_providers {
    proxmox = {
      source  = "telmate/proxmox"
      version = "3.0.2-rc05"
    }
  }
}

provider "proxmox" {
  pm_api_url          = var.pm_api_url
  pm_api_token_id     = var.pm_api_token_id
  pm_api_token_secret = var.pm_api_token_secret
  pm_tls_insecure     = true
}

resource "proxmox_vm_qemu" "ubuntu" {
  name        = "vm-docker-prod-2"
  target_node = "pve"
  clone       = "Ubuntu-22.04-Cloud-Init"
  vmid        = 107
  cpu {

    cores = 2 
  }
  memory           = 4096
  agent            = 1
  boot             = "order=scsi0"
  scsihw           = "virtio-scsi-single"
  vm_state         = "running"
  automatic_reboot = true
  ipconfig0        = "dhcp"
  skip_ipv6        = true

  disks {
    scsi {
      scsi0 {
        disk {
          storage = "local-lvm"
          size    = "64G"
        }
      }
    }
  }

  network {
    id     = 0
    bridge = "vmbr1"
    model  = "virtio"
    tag    = 40
  }
  ciuser     = var.user
  cipassword = var.pass
}
