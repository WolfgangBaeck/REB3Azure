
locals {
  databases = {
    management = {
      name      = "mgmt"
      collation = "en_US.utf8"
      charset   = "utf8"
    }
    reporting = {
      name      = "reports"
      collation = "en_US.utf8"
      charset   = "utf8"
    }
  }

}

module "base_setup" {
  source = "./modules"
  # General Stuff
  location        = var.location
  settings        = var.settings
  common_tags     = var.common_tags
  virtual_network = var.virtual_network
  client_name     = var.client_name
  subnet_size     = var.subnet_size
  # Storage Account Stuff
  private_containers = var.private_containers
  public_containers  = var.public_containers
  # Scaleset stuff
  number_of_machines = var.number_of_machines
  # Databases
  server_databases = local.databases
  storage          = var.storage
  admin_login      = var.admin_login
  admin_pwd   = var.admin_pwd
}
