module "keycloak_vm" {
  source = "../../modules/vps"

  name   = "auth"
  size   = "s-2vcpu-4gb"
  image  = "ubuntu-24-04-x64"
}

module "firewall" {
  source = "../../modules/firewall"

  droplet_id = module.keycloak_vm.id
}

resource "digitalocean_record" "auth" {
  domain = var.domain
  type   = "A"
  name   = "auth"
  value  = module.keycloak_vm.ip
}

#(optional)
module "postgres" {
  source = "../../modules/postgres"

  name = "keycloak"
}
