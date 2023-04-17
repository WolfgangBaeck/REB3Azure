
output "gateway_ip" {
  value =  module.base_setup.gateway_ip
}

output "storage_accnt_pub_name" {
  value = module.base_setup.storage_accnt_pub_name
}

output "container_static_name" {
  value = module.base_setup.container_static_name
}

output "container_media_name" {
  value = module.base_setup.container_media_name
}

output "subnets" {
  value = module.base_setup.subnets
}

output "db_subnet_id" {
  value = module.base_setup.db_subnet_id
}

/*
output "databases" {
  value = {for id in keys(module.dbservers.databases) : id => module.dbservers.databases[id].id }
}
*/