output "vnet_name" {
  value = azurerm_virtual_network.hub-vnet.name
}

output "vnet_id" {
  value = azurerm_virtual_network.hub-vnet.id
}
output "address_space" {
  value = azurerm_virtual_network.hub-vnet.address_space
}

output "subnet_names" {
  value = { for k, subnet in azurerm_subnet.hub_snet : k => subnet.name }
}

output "subnet_ids" {
  value = { for k, subnet in azurerm_subnet.hub_snet : k => subnet.id }
}
