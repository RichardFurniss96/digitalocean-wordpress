data "digitalocean_ssh_key" "key" {
  name = var.ssh_key_name
}

data "digitalocean_project" "wordpress" {
  name = var.project_name
}