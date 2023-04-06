variable "subscription_id" {
  type        = string
  description = "The azure subscription id for this retail client ideally provided via .tfvars file"
}

variable "location" {
  type        = string
  description = "The region for the deployment"
  default     = "East US 2"
}

variable "settings" {
  type = map(string)
  default = {
    basestack   = "r3us"
    environemnt = "epsilon"
  }
}

variable "virtual_network" {
  type        = map(any)
  description = "Name of network and address space in CIDR"
  default = {
    name           = "app-network"
    address_space  = "10.2.0.0/16"
    address_prefix = "10.2"
  }
}

variable "client_name" {
  type    = string
  default = "epsilon"
}

variable "subnet_size" {
  type    = string
  default = "large"
}


variable "common_tags" {
  type = map(string)
  default = {
    BillingEnvironment = "r3us"
    BillingRetailer    = "epsilon"
    BillingApplication = "REB3"
  }
}

variable "private_containers" {
  type        = list(string)
  default     = ["RdsBackupCont", "ManagementStaticFilesCont", "ManagementMediaFilesCont", "ManagementMediaFilesBackupCont", "ManagementCommFilesCont", "ProcessingCommFilesCont", "SftpCont", "SftpBackupCont"]
  description = "Name of the individual containers for the private storage account"
}

variable "public_containers" {
  type        = list(string)
  default     = ["Scripts", "Data"]
  description = "Name of the individual containers for the public storage account"
}
