output "vnet_names" {
  value =azurerm_virtual_network.s1vnet.name
}

output "vnet_ids" {
  value = azurerm_virtual_network.s1vnet.id
}



output "subnet_names" {
  value = { for key, subnet in azurerm_subnet.subnet_config : key => subnet.name }
}


output "subnet_id" {
  value = { for key, subnet in azurerm_subnet.subnet_config : key => subnet.id}
}

output "address_space" {
  value = azurerm_virtual_network.s1vnet.address_space
  
}