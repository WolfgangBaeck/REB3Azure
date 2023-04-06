
output "gateway_ip" {
  value =  module.client_network.gateway_ip.ip_address
}

output "storage_accnt_pub_name" {
  value = module.storage.accntpub.name
}

output "container_static_name" {
  value = { for id in keys(module.storage.cont_static) : id =>  module.storage.cont_static[id].name}
}

output "container_media_name" {
  value = { for id in keys(module.storage.cont_media) : id =>  module.storage.cont_media[id].name}
}
