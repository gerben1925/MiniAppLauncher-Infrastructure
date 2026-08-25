provider "proxmox" {
  #   endpoint  = var.proxmox_api_url
  endpoint  = "https://100.95.190.85:8006/"
  api_token = var.proxmox_api_token
  insecure  = true

  ssh {
    agent = true
  }
}