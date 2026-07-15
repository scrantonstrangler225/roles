terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }

    namecheap = {
      source  = "namecheap/namecheap"
      version = "~> 2.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

provider "namecheap" {
  user_name = var.namecheap_username
  api_user  = var.namecheap_api_user
  api_key   = var.namecheap_api_key
  client_ip = var.namecheap_client_ip
}
