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
  default = "s-1vcpu-1gb"
}

variable "snapshot_name" {
  type = string
}

variable "image_version" {
  type    = string
  default = "1.0.0"
}

variable "image_name" {
  type = string
}

variable "parent_image" {
  type    = string
  default = "ubuntu-24-04-x64"
}

variable "base_image" {
  default = "237062350" # hardcoded for now concourse later
}

variable "ssh_key_id" {
  type = number
}
