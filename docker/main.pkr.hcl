source "digitalocean" "ubuntu" {

  api_token = var.do_token

  image  = var.base_image
  region = var.region
  size   = var.size

  ssh_username = "vagrant"

  ssh_private_key_file = "/home/vagrant/.ssh/id_ed25519"

  ssh_key_id = var.ssh_key_id
  

  #snapshot_name = var.snapshot_name
  snapshot_name = "${var.snapshot_name}-v${var.image_version}"
}

build {

  name = "docker-ubuntu"

  sources = [
    "source.digitalocean.ubuntu"
  ]

  provisioner "shell" {
    script = "scripts/bootstrap.sh"
  }

  provisioner "ansible" {
    playbook_file = "../../../../cac/playbooks/docker.yml"

    extra_arguments = [
      "-e",
      "@../../../../cac/inventories/dev/group_vars/all.yml"
    ]
 
    ansible_env_vars = [
      "ANSIBLE_CONFIG=/home/vagrant/cac/ansible.cfg"
    ]

  }

  provisioner "shell" {
    script = "scripts/cleanup.sh"
  }

  post-processor "manifest" {
    output     = "packer-output.json"
    strip_path = true
  }

}
