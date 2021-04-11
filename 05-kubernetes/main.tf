provider "azurerm" {
  version = "=2.50.0"
  features {}
}

resource "random_integer" "subffix" {
  min = 1000
  max = 9999
}

# Create a resource group
resource "azurerm_resource_group" "demo" {
  name     = "${var.prefix}-kubernetes-${random_integer.subffix.result}"
  location = var.location
}
