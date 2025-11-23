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
  pm_api_token_id     = var.pm_api_token_id
  pm_api_token_secret = var.pm_api_token_secret
  pm_tls_insecure     = true
}


resource "proxmox_vm_qemu" "ubuntu" {
  name        = "UptimeKuma"
  target_node = "pve"

  clone       = "Ubuntu-22.04-Cloud-Init"
  cores       = 2
  sockets     = 1
  memory      = 2048

  ciuser      = var.user 
  cipassword  = var.pass 
  ipconfig0   = "ip=dhcp"
}
