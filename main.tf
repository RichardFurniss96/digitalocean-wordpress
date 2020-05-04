resource "digitalocean_droplet" "wordpress" {
  image  = "wordpress-18-04"
  name   = var.droplet_name
  region = "lon1"
  size   = "s-1vcpu-1gb"
  ssh_keys = [data.digitalocean_ssh_key.key.fingerprint]
}


resource "digitalocean_project_resources" "wordpress" {
  project = data.digitalocean_project.wordpress.id
  resources = [
    digitalocean_droplet.wordpress.urn
  ]
}