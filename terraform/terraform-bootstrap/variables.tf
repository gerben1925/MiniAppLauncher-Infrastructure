variable "rustfs_bucket" {
  description = "Bucket name for RUSTFS"
  type        = string
}

variable "access_key" {
  description = "Access key for S3 backend"
  type        = string
  sensitive   = true
}

variable "secret_key" {
  description = "Secret key for S3 backend"
  type        = string
  sensitive   = true
}

variable "rustfs_ip" {
  description = "IP address of the RUSTFS server"
  type        = string
  default     = "localhost"
}

variable "rustfs_port" {
  description = "Port of the RUSTFS server"
  type        = string
  default     = "1021"
}