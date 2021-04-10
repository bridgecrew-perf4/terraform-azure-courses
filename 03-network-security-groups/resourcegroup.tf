resource "azurerm_resource_group" "demo" {
  name     = "${var.prefix}-network-security-group-demo"
  location = var.location
  tags = {
      env = "network-security-group-demo"
  }
}
