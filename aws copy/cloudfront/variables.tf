variable "bucket_name" {
  type = string
}

variable "environment" {
  type    = string
  default = "dev"
}

variable "enable_oac" {
  type    = bool
  default = true
}

variable "aws_region" {
  type    = string
  default = "us-east-1"
}
