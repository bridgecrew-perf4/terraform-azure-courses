resource "random_string" "random-name" {
  length  = 4
  upper   = false
  lower   = false
  number  = true
  special = false
}

resource "azurerm_resource_group" "demo" {
  name     = "${var.prefix}-network-security-group-${random_string.random-name.result}"
  location = var.location
  tags = {
      env = "network-security-group-demo"
  }
}
