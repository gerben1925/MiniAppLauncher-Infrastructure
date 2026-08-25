provider "proxmox" {
  #   endpoint  = var.proxmox_api_url
  endpoint  = "https://192.168.0.82:8006/"
  api_token = var.proxmox_api_token
  insecure  = true

  ssh {
    agent = true
  }
}