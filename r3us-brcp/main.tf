resource "azurerm_resource_group" "appgrp" {
  name     = "${var.settings.basestack}-${var.settings.environemnt}"
  location = var.location
}

resource "azurerm_virtual_network" "appnetwork" {
  name                = "${var.settings.basestack}-${var.settings.environemnt}-${var.virtual_network.name}"
  location            = azurerm_resource_group.appgrp.location
  resource_group_name = azurerm_resource_group.appgrp.name
  address_space       = [var.virtual_network.address_space]
}


module "client_network" {
  source               = "./../modules/client_network"
  location             = var.location
  resource_group_name  = azurerm_resource_group.appgrp.name
  virtual_network_name = azurerm_virtual_network.appnetwork.name
  virtual_network_id   = azurerm_virtual_network.appnetwork.id
  client_name          = var.client_name
  subnet_size          = var.subnet_size
  address_prefix       = var.virtual_network.address_prefix
  number_of_machines   = var.number_of_machines
  settings             = var.settings
  tags                 = var.common_tags
}


module "storage" {
  source              = "./../modules/storage"
  resource_group_name = azurerm_resource_group.appgrp.name
  location            = azurerm_resource_group.appgrp.location
  settings            = var.settings
  private_containers  = var.private_containers
  public_containers   = var.public_containers
  tags                = var.common_tags
}

