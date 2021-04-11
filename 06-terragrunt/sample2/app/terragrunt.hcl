terraform {
  source = "git@github.com:TsuyoshiUshio/infrastructure-module.git//app?ref=v0.0.3"
}

remote_state {
    backend = "azurerm"
    config = {
        key = "${path_relative_to_include()}/terraform.tfstate"
        resource_group_name = "storage-acc-rg-1"
        storage_account_name = "storageac123456"
        container_name = "stage-container-1"
    }
}

inputs = {
  location = "westus"
  resource_group_name = "demo-resource-group-1"
}
