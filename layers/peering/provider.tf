terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.19.0"
    }
  }
 backend "azurerm" {
    resource_group_name = "va-rg-dev-backend"
    storage_account_name = "vastdevbackend"
    container_name = "tfstate"
    key = "peering/default.tfstate"  
  }
}

provider "azurerm" {
  # Configuration options
  features { }
  subscription_id = "5fc2871e-70a4-4a37-a2ae-2b2cfa3ddaec"
}