output "vnet_name" {
  value = module.hub-vnet.vnet_name
}

output "vnet_id" {
  value = module.hub-vnet.vnet_id
}
output "subnet_names" {
  value = module.hub-vnet.subnet_names

}

output "subnet_ids" {
  value = module.hub-vnet.subnet_ids

}
output "address_space" {
  value = module.hub-vnet.address_space
  
}