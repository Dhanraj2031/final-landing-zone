output "vnet_name" {
  value = azurerm_virtual_network.onprem-vnet.name
}

output "vnet_id" {
  value = azurerm_virtual_network.onprem-vnet.id
}
output "address_space" {
  value = azurerm_virtual_network.onprem-vnet.address_space
  
}
output "snet1_name" {
  value = azurerm_subnet.snet["snet1"].name
}

output "snet2_name" {
  value = azurerm_subnet.snet["snet2"].name
}

output "snet1_id" {
  value = azurerm_subnet.snet["snet1"].id
}

output "snet2_id" {
  value = azurerm_subnet.snet["snet2"].id
}
