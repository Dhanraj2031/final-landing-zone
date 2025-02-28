output "vm_name" {
  value = azurerm_windows_virtual_machine.vm.name
}
output "vm_id" {
  value = azurerm_windows_virtual_machine.vm.id
}

output "pubip" {
    value = azurerm_public_ip.pub-ip.ip_address
  
}