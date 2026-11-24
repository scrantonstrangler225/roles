resource "keycloak_realm" "main" {
  realm   = var.realm_name
  enabled = true

  display_name = "NSM Auth"

  login_theme = "keycloak" # "iiwii"
}
