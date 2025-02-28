
output "firewall_public_ip" {
  value = azurerm_public_ip.firewall-pubip.ip_address
}


output "firewall_private_ip" {
  value = azurerm_firewall.firewall.ip_configuration[0].private_ip_address
}