provider "azurerm" {
  version = "=2.50.0"
  features {}
}

# Create a resource group
resource "azurerm_resource_group" "demo" {
  name     = "kubernetes-demo"
  location = var.location
}
