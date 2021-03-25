
remote_state {
    backend = "azurerm"
    config = {
        key = "${path_relative_to_include()}/terraform.tfstate"
        resource_group_name = "wenli-rg-3"
        storage_account_name = "wenlicos"
        container_name = "tfstate"
    }
}

inputs = {
  location = "westus"
  resource_group_name = "hui-rg-01"
}
