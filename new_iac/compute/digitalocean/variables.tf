# compute/digitalocean/variables.tf

variable "do_token" {
  type      = string
  sensitive = true
}

variable "region" {
  type    = string
  default = "fra1"
}

variable "size" {
  type    = string
  default = "s-1vcpu-1gb"
}

variable "ssh_key_name" {
  type = string
}

variable "name" {
  type    = string
  default = "api-server"
}

variable "image" {
  type    = string
  default = "ubuntu-22-04-x64"
}
