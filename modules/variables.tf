variable "location" {
  type        = string
  description = "The region for the deployment"
}

variable "virtual_network" {
  type        = object({
    name           = string
    address_space  = string
    address_prefix = string
  })
  description = "Name of network and address space in CIDR"
}

variable "client_name" {
  type        = string
  description = "The region for the deployment"
}        
  
variable "subnet_size" {
  type        = string
  description = "The region for the deployment"
}        
  
variable "number_of_machines" {
  type        = string
  description = "The region for the deployment"
} 
  
variable "settings" {
  type = object({
    basestack   = string
    environemnt = string
  })
}   
  
variable "common_tags" {
  type = object({
    BillingEnvironment = string
    BillingRetailer    = string
    BillingApplication = string
  })
}

variable "private_containers" {
  type        = list(string)
  description = "Name of the individual containers for the private storage account"
}

variable "public_containers" {
  type        = list(string)
  description = "Name of the individual containers for the public storage account"
}

variable  "server_databases" {
    type = map(object({
      name      = string
      collation = string
      charset   = string
    }))
  }

variable "db_version" {
  type    = string
  default = "12"
}

variable "admin_login" {
  type    = string
}

variable "admin_pwd" {
  type    = string
}
variable "storage" {
  type        = number
  description = "db storage reserved in MB"
}