output "s1_vm_ids" {
  description = "IDs of the created VMs"
 value = { for value,vm in azurerm_windows_virtual_machine.vm : value => vm.id}        
}


output "s1_vm_nic_ids" {
  description = "IDs of the created NICs"
  value = { for value,nic in azurerm_network_interface.nic: value => nic.id}
}

output "s1_vm_private_ips" {
  description = "Private IPs of the created NICs"
  value = { for value, nic in azurerm_network_interface.nic : value => nic.private_ip_address }
}

output "s1_nsg_ids" {
  description = "IDs of the created NSGs"
  value = { for key, s1_nsg in azurerm_network_security_group.s1_nsg : key => s1_nsg.id }
}
