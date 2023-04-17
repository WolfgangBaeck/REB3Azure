terraform {
    backend "azurerm" {
    resource_group_name  = "terraform-tfstate-rg"
    storage_account_name = "terraformtfv78lno1s"
    container_name       = "delta-tfstate"
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