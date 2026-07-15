#################################################
# this is only for testing - no PROD or STAGING #
#################################################

resource "keycloak_user" "coach_test" {
  realm_id = keycloak_realm.main.id
  username = "coach_test"
  enabled  = true

  initial_password {
    value     = "test123"
    temporary = false
  }
}

resource "keycloak_user" "player_test" {
  realm_id = keycloak_realm.main.id
  username = "player_test"
  enabled  = true

  initial_password {
    value     = "test123"
    temporary = false
  }
}

resource "keycloak_user" "scout_test" {
  realm_id = keycloak_realm.main.id
  username = "scout_test"
  enabled  = true

  initial_password {
    value     = "test123"
    temporary = false
  }
}


#######################################
## assign roles to test personas (6) ## 
#######################################

resource "keycloak_user_roles" "coach_roles" {
  realm_id = keycloak_realm.main.id
  user_id  = keycloak_user.coach_test.id

  role_ids = [
    keycloak_role.coach.id
  ]
}

resource "keycloak_user_roles" "player_roles" {
  realm_id = keycloak_realm.main.id
  user_id  = keycloak_user.player_test.id

  role_ids = [
    keycloak_role.player.id
  ]
}

resource "keycloak_user_roles" "scout_roles" {
  realm_id = keycloak_realm.main.id
  user_id  = keycloak_user.scout_test.id

  role_ids = [
    keycloak_role.scout.id
  ]
}
