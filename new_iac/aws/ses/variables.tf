variable "domain" {
  type = string
  default = "foo.world"
}

variable "from_email" {
  type = string
  default = "no-reply@foo.world"
}

variable "aws_region" {
  type    = string
  default = "us-east-1"
}
