#CHALLENGE 1
resource "local_file" "web_servers_elite" {
   for_each = toset(var.web_server_names)
   filename = "${path.module}/${each.key}.txt}"
   content = "Web_Server_Elite : ${each.value}"
}

output "Name" {
  value = "Dimitri Burrell"
}

#CHALLENGE 2
resource "local_file" "feature_togggles"{
    for_each = var.feature_toggles
    filename = "${path.module}/${each.key}.txt"
    content = "${each.key}/${each.value}"
}
output "Name" {
  value = "Dimitri Burrell"
}

#CHALLENGE 3
resource "local_file" "resource_a" {
    filename = "a.txt"
    content = "Content for resource_a"
}
resource "local_file" "resource_b" {
    filename = "b.txt"
    content = "Content for resource_b"

depends_on = [local_file.resource_a]
}

output "Name" {
  value = "Dimitri Burrell"
}

#CHALLENGE 4
resource "local_file" "server_info" {
    filename = "${path.module}/server_details.txt"
  content = <<-EOT
  Hostname: ${var.server_config.hostname}
  Ip_Address: ${var.server_config.ip_address}
  Roles : ${var.server_config.roles}
  EOT
}

output "server_config_summary" {
  description = "Summary of server configuration."
  value = <<-EOT
    Hostname: ${var.server_config.hostname}
    Ip_Address: ${var.server_config.ip_address}
    Roles: ${var.server_config.roles}
    EOT
}
output "Name" {
  value = "Dimitri Burrell"
}
