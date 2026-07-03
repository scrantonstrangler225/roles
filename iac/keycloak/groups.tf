resource "keycloak_group" "coaches" {
  realm_id = keycloak_realm.main.id
  name     = "coaches"
}

resource "keycloak_group" "players" {
  realm_id = keycloak_realm.main.id
  name     = "players"
}

resource "keycloak_group" "scout" {
  realm_id = keycloak_realm.main.id
  name     = "scout"
}

resource "keycloak_group" "brand" {
  realm_id = keycloak_realm.main.id
  name     = "brand"
}

resource "keycloak_group" "podcaster" {
  realm_id = keycloak_realm.main.id
  name     = "podcaster"
}

resource "keycloak_group" "fan" {
  realm_id = keycloak_realm.main.id
  name     = "fan"
}
