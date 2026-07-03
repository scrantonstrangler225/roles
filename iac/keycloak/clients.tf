resource "keycloak_openid_client" "flutter" {
  realm_id  = keycloak_realm.main.id
  client_id = "flutter-web-secure"

  name    = "Flutter App"
  enabled = true

  access_type = "PUBLIC"

  standard_flow_enabled = true
  pkce_code_challenge_method = "S256"

  valid_redirect_uris = [
    "com.nsm.app://callback",
    "http://localhost:*"
  ]
}

# fastapi (stub)
resource "keycloak_openid_client" "api" {
  realm_id  = keycloak_realm.main.id
  client_id = "api"

  access_type = "CONFIDENTIAL"

  service_accounts_enabled = true
}
