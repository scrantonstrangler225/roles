# aws/s3/variables.tf

variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "bucket_name" {
  type        = string
  description = "S3 bucket for media uploads"
}

variable "environment" {
  type    = string
  default = "dev"
}
