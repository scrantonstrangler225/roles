variable "keycloak_url" {
  type = string
}

variable "keycloak_admin_user" {
  type = string
}

variable "keycloak_admin_password" {
  type      = string
  sensitive = true
}

variable "keycloak_client_id" {
  type    = string
  default = "admin-cli"
}

variable "realm_name" {
  type    = string
  default = "NSM"
}

variable "create_dev_test_users" {
  description = "Create test users for DEV only."
  type        = bool
  default     = false
}

variable "dev_test_user_password" {
  type      = string
  sensitive = true
  default   = "password"
}

# dev only
variable "flutter_valid_redirect_uris" {
  type = list(string)

  default = []
}


variable "environment" {
  description = "Deployment environment."
  type        = string

  validation {
    condition     = contains(["dev", "staging", "prod"], var.environment)
    error_message = "Environment must be dev, staging, or prod."
  }
}

