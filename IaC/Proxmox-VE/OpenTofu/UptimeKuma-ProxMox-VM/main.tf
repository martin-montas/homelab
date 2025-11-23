terraform {
  required_providers {
    proxmox = {
      source  = "telmate/proxmox"
      version = "3.0.1-rc3"
    }
  }
}

provider "proxmox" {
  pm_api_url          = var.pm_api_url
  pm_user             = var.pm_user
  pm_password         = var.
  pm_tls_insecure     = true
}


resource "proxmox_vm_qemu" "ubuntu" {
  name        = "ubuntu-test"
  target_node = "pve"

  clone       = "Ubuntu-22.04-Cloud-Init"
  cores       = 2
  sockets     = 1
  memory      = 2048

  ciuser      = "martin"
  cipassword  = "yourpassword"

  ipconfig0   = "ip=dhcp"
}
