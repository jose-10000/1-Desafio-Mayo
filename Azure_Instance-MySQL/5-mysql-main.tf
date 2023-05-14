# Create a random prefix for the MySQL Server name
resource "random_pet" "db_name" {
  prefix = var.db_name_prefix
}




# Create a MySQL Server
resource "azurerm_mysql_server" "mysql-server" {
  name                = random_pet.db_name.id
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  administrator_login          = var.mysql-admin-login
  administrator_login_password = var.mysql-admin-password

  sku_name = var.mysql-sku-name
  version  = var.mysql-version

  storage_mb        = var.mysql-storage
  auto_grow_enabled = true

  backup_retention_days        = 7
  geo_redundant_backup_enabled = false

  public_network_access_enabled    = true
  ssl_enforcement_enabled          = true
  ssl_minimal_tls_version_enforced = "TLS1_2"
}

# Create a MySQL Database
resource "azurerm_mysql_database" "mysql-db" {
  name                = "desafiodb"
  resource_group_name = azurerm_resource_group.rg.name

  server_name         = azurerm_mysql_server.mysql-server.name
  charset             = "utf8"
  collation           = "utf8_unicode_ci"
}