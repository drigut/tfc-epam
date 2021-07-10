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

  subscription_id = "0cd1082d-505a-46d9-976d-2c8db2796bc3"
}

# Create a resource group
resource "azurerm_resource_group" "varkhipov_rg" {
  name     = "varkhipov_rg"
  location = "West Europe"
}
