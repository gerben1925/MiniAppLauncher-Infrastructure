provider "aws" {
  region     = "us-east-1"
  access_key = var.access_key
  secret_key = var.secret_key

  endpoints {
    s3 = "http://${var.rustfs_ip}:${var.rustfs_port}"
  }

  s3_use_path_style = true

  skip_credentials_validation = true
  skip_requesting_account_id  = true
  skip_region_validation      = true
  skip_metadata_api_check     = true
}