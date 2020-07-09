# Hetzner Cloud with Terraform

provider "hcloud" {
  token = "${var.hcloud_token}"
}


resource "hcloud_server" "server" {                      # Create a server
  name        = "${var.name}"                            # Name server
  image       = "${var.image}"                           # Basic image
  server_type = "${var.server_type}"                     # Instance type
  datacenter  = "${var.datacenter}"                      # Region
  backups     = "false"                                  # Enable backups
#  ssh_keys    = ["${hcloud_ssh_key.default.name}"]       # SSH key
  ssh_keys    = ["${data.hcloud_ssh_key.ssh_key.id}","${data.hcloud_ssh_key.ssh_key_2.id}"]
}

