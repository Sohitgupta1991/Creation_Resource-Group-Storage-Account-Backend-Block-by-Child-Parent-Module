terraform {

  backend "azurerm" {
    subscription_id = "6e2d972f-0c29-493d-bc26-2eaa32b9e4b9"
    resource_group_name  = "backend"
    storage_account_name = "backendkaadda90"
    container_name       = "addekadabba"  
    key                  = "Sohit.terraform.tfstate"

  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.26.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "6e2d972f-0c29-493d-bc26-2eaa32b9e4b9"
}


