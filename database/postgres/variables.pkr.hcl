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

variable "base_image" {
  type    = string
  default = "236924827" # from docker
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

variable "ssh_key_id" {
  type = number
}
