resource "keycloak_openid_client_scope" "roles" {
  realm_id = keycloak_realm.main.id
  name     = "roles"
}

# optional mapper later
#resource "keycloak_openid_user_client_role_protocol_mapper" "roles_mapper" {
#  realm_id        = keycloak_realm.main.id
#  client_scope_id = keycloak_openid_client_scope.roles.id
#
#  name = "roles-mapper"
#
#  claim_name = "roles"
#  json_type_label = "String"
#}
