# Output ipv4 for VM
output "public_ip4" {
  value = "${hcloud_server.server.ipv4_address}"
}

output "server_type" {
  value = "${hcloud_server.server.server_type}"
}

output "location" {
  value = "${hcloud_server.server.location}"
}

output "image" {
  value = "${hcloud_server.server.image}"
}

output "status" {
  value = "${hcloud_server.server.status}"
}