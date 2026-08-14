terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"

    }
  }
  backend "azurerm" {
    resource_group_name  = "tfstate"
    storage_account_name = "augstorager4123"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}