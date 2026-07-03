## these output become ansible inventory inputs ##
## this is first then - provider Keycloak (dir) ##
output "auth_ip" {
  value = module.keycloak_vm.ip
}

output "auth_hostname" {
  value = digitalocean_record.auth.fqdn
}

output "postgres_host" {
  value = module.postgres.host
}
