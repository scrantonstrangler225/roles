# modules/vps/variables.tf

variable "name" {}
variable "region" {}
variable "size" {}
variable "image" {}

variable "ssh_key_id" {
  type = string
}

variable "tags" {
  type    = list(string)
  default = []
}
