output "realm_name" {
  value = keycloak_realm.main.realm
}

output "issuer_url" {
  value = "${var.keycloak_url}/realms/${keycloak_realm.main.realm}"
}

output "client_ids" {
  value = {
    flutter = keycloak_openid_client.flutter.client_id
    api     = keycloak_openid_client.api.client_id
  }
}
