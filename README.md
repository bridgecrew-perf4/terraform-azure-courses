# Terraform - Azure Quickstarts

## Overview
some terraform scripts as common Azure deployment patterns.

## How to run
### Preparation
Download and install terraform and terragrunt: https://www.terraform.io/downloads.html and https://terragrunt.gruntwork.io/docs/getting-started/install/

Install Azure CLI: https://docs.microsoft.com/en-us/cli/azure/install-azure-cli

### Run terraform
Please understand how to run terrafrom from below refernece links

### Feature highlight
1. create resource group
2. create one simple VM with username and password
3. create one VM with ssh key
4. create VM and run init script
5. create kubernete cluster
6. run terragrunt with module and remote git source

## Reference

### Azure

- provider: https://www.terraform.io/docs/providers/azurerm/

- example: https://github.com/terraform-providers/terraform-provider-azurerm/tree/master/examples

- terraform on Azure: https://docs.microsoft.com/en-us/azure/developer/terraform/

### Terraform and Terrgrunt

- terraform syntax: https://www.terraform.io/docs/configuration/syntax.html

- iterpolation: https://www.terraform.io/docs/configuration/interpolation.html

- terragrunt configuration: https://terragrunt.gruntwork.io/docs/getting-started/configuration/