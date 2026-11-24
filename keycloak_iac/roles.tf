# application specific user role for personas
locals {
  application_roles = [
    "coach",
    "player",
    "scout",
    "podcaster",
    "fan",
    "brand",
    "admin"
  ]
}


resource "keycloak_role" "application" {
  for_each = toset(local.application_roles)

  realm_id  = keycloak_realm.main.id
  client_id = keycloak_openid_client.flutter.id

  name = each.value
}

