# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
  client_id = var.client_id
  client_secret = var.client_secret
  tenant_id = var.tenant_id

}

# Create a resource group "varkhipovazurepgsqlrg"
resource "azurerm_resource_group" "varkhipovazurepgsqlrg" {
  name     = "varkhipovazurepgsqlrg"
  location = var.location
}
# Create postgresql server
resource "azurerm_postgresql_server" "varkhipovazurepgsqlsrv" {
  name                = "varkhipovazurepgsqlsrv"
  location            = var.location
  resource_group_name = "varkhipovazurepgsqlrg"

  administrator_login          = "varkhipov"
  administrator_login_password = "H@Sh1CoR3!"

  sku_name   = "B_Gen5_1"
  version    = "9.6"
  storage_mb = 5120

  backup_retention_days        = 7
  geo_redundant_backup_enabled = false
  auto_grow_enabled            = true

  public_network_access_enabled    = true
  ssl_enforcement_enabled          = true
  ssl_minimal_tls_version_enforced = "TLS1_2"
}