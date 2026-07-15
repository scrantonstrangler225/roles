packer {
  required_plugins {

    digitalocean = {
      version = ">= 1.1.3"
      source  = "github.com/digitalocean/digitalocean"
    }

    ansible = {
      version = ">= 1.1.3"
      source  = "github.com/hashicorp/ansible"
    }

  }
}
