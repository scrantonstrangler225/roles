environment = "dev"

keycloak_url = "http://10.0.0.13:8080"
#keycloak_url = "https://auth.dev.newskoolmedia.world"

keycloak_admin_user     = "admin"
keycloak_admin_password = "password"

create_dev_test_users = true

dev_test_user_password = "password"

flutter_valid_redirect_uris = [
  "com.example.app://callback",
  "world.newskoolmedia.app://callback",
  "http://localhost:*"
]


