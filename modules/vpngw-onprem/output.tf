output "vpn_gateway_id" {
  value = azurerm_virtual_network_gateway.vpn_gateway.id
}
output "vpn_pubip" {
  value = azurerm_public_ip.vpn_pubip.ip_address
}

output "shared_key" {
  value = "D@8904702873"
}