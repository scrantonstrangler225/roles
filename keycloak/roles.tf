resource "keycloak_role" "coach" {
  realm_id = keycloak_realm.main.id
  name     = "coach"
}

resource "keycloak_role" "player" {
  realm_id = keycloak_realm.main.id
  name     = "player"
}

resource "keycloak_role" "scout" {
  realm_id = keycloak_realm.main.id
  name     = "scout"
}

resource "keycloak_role" "brand" {
  realm_id = keycloak_realm.main.id
  name     = "brand"
}

resource "keycloak_role" "podcaster" {
  realm_id = keycloak_realm.main.id
  name     = "podcaster"
}

resource "keycloak_role" "fan" {
  realm_id = keycloak_realm.main.id
  name     = "fan"
}

resource "keycloak_role" "admin" {
  realm_id = keycloak_realm.main.id
  name     = "admin"
}
