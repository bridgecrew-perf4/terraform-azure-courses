# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 2.26"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "random_id" "id" {
  byte_length = 4
}

resource "azurerm_resource_group" "rg" {
  name     = "mytest-rg-${random_id.id.hex}"
  location = "westus2"
}

# Create a virtual network
resource "azurerm_virtual_network" "vnet" {
    name                = "myTFVnet"
    address_space       = ["10.0.0.0/16"]
    location            = "westus2"
    resource_group_name = azurerm_resource_group.rg.name
}
