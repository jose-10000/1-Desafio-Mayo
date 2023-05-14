#####################################
#       Azure instance - Output     #
#####################################

output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}

output "public_ip_address" {
  value = azurerm_linux_virtual_machine.my_terraform_vm.public_ip_address
}

output "tls_private_key" {
  value     = tls_private_key.example_ssh.private_key_pem
  sensitive = true
}

#####################################
# Azure Database for MySQL - Output #
#####################################

output "mysql_server" {
  value     = azurerm_mysql_server.mysql-server
  sensitive = true
}
