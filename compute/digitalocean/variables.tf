# compute/digitalocean/variables.tf

variable "do_token" {
  type      = string
  sensitive = true
}

variable "region" {
  type    = string
  default = "nyc3"
}

variable "size" {
  type    = string
  default = "s-2vcpu-4gb"
  #default = "s-1vcpu-2gb"
  #default = "s-1vcpu-1gb" # base,docker,psql,valkey,mongo,nginx
}

variable "ssh_key_name" {
  type = string
  default = "vagrant"
}

variable "name" {
  type    = string
  default = "api-server"
}

variable "image" {
  type    = string
  #default = "ubuntu-22-04-x64"
  #default = "ubuntu-24.04-base-v1.0.0"
  #default = "236848111"
  #default = "236908992"
  default = "237062488" # docker
}
