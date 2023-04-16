terraform {
    backend "azurerm" {
    resource_group_name  = "r3uswalm-tfstate-rg"
    storage_account_name = "r3uswalmtftp885kev"
    container_name       = "core-tfstate"
    key                  = "actions.tfstate"
  }
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.46.0"
    }
  }
}

provider "azurerm" {
  features {}
}