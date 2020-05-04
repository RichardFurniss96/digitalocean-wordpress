data "digitalocean_ssh_key" "key" {
  name = var.ssh_key_name
}

data "digitalocean_project" "project" {
  name = var.project_name
}