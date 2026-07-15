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
  default = "nsm"
}
