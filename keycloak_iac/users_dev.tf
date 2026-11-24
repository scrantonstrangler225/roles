#################################################
# this is only for testing - no PROD or STAGING #
#################################################

resource "keycloak_user" "coach_test" {
  count = var.create_dev_test_users ? 1 : 0

  realm_id = keycloak_realm.main.id
  username = "coach_test"
  enabled  = true

  initial_password {
    value     = var.dev_test_user_password
    temporary = false
  }
}

resource "keycloak_user" "player_test" {
  count = var.create_dev_test_users ? 1 : 0

  realm_id = keycloak_realm.main.id
  username = "player_test"
  enabled  = true

  initial_password {
    value     = var.dev_test_user_password
    temporary = false
  }
}

resource "keycloak_user" "scout_test" {
  count = var.create_dev_test_users ? 1 : 0

  realm_id = keycloak_realm.main.id
  username = "scout_test"
  enabled  = true

  initial_password {
    value     = var.dev_test_user_password
    temporary = false
  }
}

resource "keycloak_user" "brand_test" {
  count = var.create_dev_test_users ? 1 : 0

  realm_id = keycloak_realm.main.id
  username = "brand_test"
  enabled  = true

  initial_password {
    value     = var.dev_test_user_password
    temporary = false
  }
}

resource "keycloak_user" "podcaster_test" {
  count = var.create_dev_test_users ? 1 : 0

  realm_id = keycloak_realm.main.id
  username = "podcaster_test"
  enabled  = true

  initial_password {
    value     = var.dev_test_user_password
    temporary = false
  }
}

resource "keycloak_user" "fan_test" {
  count = var.create_dev_test_users ? 1 : 0

  realm_id = keycloak_realm.main.id
  username = "fan_test"
  enabled  = true

  initial_password {
    value     = var.dev_test_user_password
    temporary = false
  }
}

#######################################
## assign roles to test personas (6) ## 
#######################################

resource "keycloak_user_roles" "coach_roles" {
  realm_id = keycloak_realm.main.id
  user_id  = keycloak_user.coach_test[0].id

  role_ids = [
    keycloak_role.application["coach"].id
  ]
}

resource "keycloak_user_roles" "player_roles" {
  realm_id = keycloak_realm.main.id
  user_id  = keycloak_user.player_test[0].id

  role_ids = [
    keycloak_role.application["player"].id
  ]
}

resource "keycloak_user_roles" "scout_roles" {
  realm_id = keycloak_realm.main.id
  user_id  = keycloak_user.scout_test[0].id

  role_ids = [
    keycloak_role.application["scout"].id
  ]
}

resource "keycloak_user_roles" "podcaster_roles" {
  realm_id = keycloak_realm.main.id
  user_id  = keycloak_user.podcaster_test[0].id

  role_ids = [
    keycloak_role.application["podcaster"].id
  ]
}

resource "keycloak_user_roles" "fan_roles" {
  realm_id = keycloak_realm.main.id
  user_id  = keycloak_user.fan_test[0].id

  role_ids = [
    keycloak_role.application["fan"].id
  ]
}

resource "keycloak_user_roles" "brand_roles" {
  realm_id = keycloak_realm.main.id
  user_id  = keycloak_user.brand_test[0].id

  role_ids = [
    keycloak_role.application["brand"].id
  ]
}
