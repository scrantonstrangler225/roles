variable "domain" {
  type = string
}

variable "from_email" {
  type = string
}

variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "smtp_user_name" {
  type = string
}

variable "namecheap_username" {
  type = string
}

variable "namecheap_api_user" {
  type = string
}

variable "namecheap_api_key" {
  type = string
}

variable "namecheap_client_ip" {
  type = string
}

variable "mail_from_subdomain" {
  type    = string
  default = "mail"
}
