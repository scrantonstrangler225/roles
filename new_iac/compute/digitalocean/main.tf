# compute/digitalocean/main.tf

data "digitalocean_ssh_key" "key" {
  name = var.ssh_key_name
}

module "api_vps" {
  source = "../modules/vps"

  name       = var.name
  region     = var.region
  size       = var.size
  image      = var.image
  ssh_key_id = data.digitalocean_ssh_key.key.id

  tags = ["api", "dev"]
}
