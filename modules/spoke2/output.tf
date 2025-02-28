output "vnet_names" {
  value =azurerm_virtual_network.s2vnet.name
}

output "vnet_ids" {
  value = azurerm_virtual_network.s2vnet.id
}



output "subnet_names"{
  value = { for value, subnet_config in azurerm_subnet.subnet_config: value => subnet_config.name }
}


output "subnet_ids"{
  value = { for value, subnet_config in azurerm_subnet.subnet_config : value => subnet_config.id }
}

output "address_space" {
  value = azurerm_virtual_network.s2vnet.address_space
  
}
