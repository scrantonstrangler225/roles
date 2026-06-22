# compute/digitalocean/outputs.tf

output "api_ip" {
  value = module.api_vps.public_ip
}
