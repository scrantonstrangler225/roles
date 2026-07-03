# modules/vps/main.tf

resource "digitalocean_droplet" "this" {
  name   = var.name
  region = var.region
  size   = var.size
  image  = var.image

  ssh_keys = [var.ssh_key_id]

  tags = var.tags
}
