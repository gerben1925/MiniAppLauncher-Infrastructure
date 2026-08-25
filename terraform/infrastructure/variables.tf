variable "vms" {
  type = map(object({
    vmid        = number
    name        = string
    mac_address = string
  }))
  description = "Map of VMs to create on Proxmox"
  default = {
    "vm-1" = {
      vmid        = 101
      name        = "ubuntu-node-development"
      mac_address = "02:DB:1F:11:2C:BD"
    }
    "vm-2" = {
      vmid        = 102
      name        = "ubuntu-node-staging"
      mac_address = "02:A8:6B:B5:79:4D"
    }
    "vm-3" = {
      vmid        = 103
      name        = "ubuntu-node-production"
      mac_address = "02:61:A3:E9:4E:91"
    }
  }
}

variable "rustfs_bucket" {
  description = "Bucket name for RUSTFS"
  type        = string
}


variable "target_node" {
  type        = string
  description = "The name of the Proxmox node to deploy the VM on"
  default     = "pve"
}

variable "ssh_public_key" {
  type      = string
  sensitive = true
}


variable "proxmox_api_url" {
  type      = string
  sensitive = true
}

variable "proxmox_api_token" {
  type      = string
  sensitive = true
}