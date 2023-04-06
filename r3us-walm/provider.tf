terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.46.0"
    }
  }
}

provider "azurerm" {
  tenant_id       = "cede9cbb-af66-4339-b20d-66396a67d2f8"
  client_id       = "e868937c-6d4f-4df0-9c29-0a9056e0cd1d"
  subscription_id = "${var.subscription_id}"
  client_secret   = "jja8Q~N.Y8rcUk.kg0sj4FFn.vLceBMJcfdngc~h"

  features {}
}