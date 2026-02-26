
variable "pm_api_url" {
  description = "The URL of the Proxmox API (e.g., https://pve.local:8006/api2/json)."
  type        = string
}

variable "pm_api_token_id" {
  description = "The Proxmox API token ID (e.g., terraform@pve!tf-user)."
  type        = string
}

variable "pm_api_token_secret" {
  description = "The secret part of the API token."
  type        = string
  sensitive   = true
}

variable "user" {
  description = "The Cloud-Init user for the VM."
  type        = string
}

variable "pass" {
  description = "The Cloud-Init password for the VM."
  type        = string
  sensitive   = true
}
