output "s2_vm_id" {
  description = "IDs of the created VMs"
  value = module.s2vm.s2_vm_ids     
}


output "s2_vm_nic_id" {
  description = "IDs of the created NICs"
  value = module.s2vm.s2_vm_nic_ids
}
output "s2_vm_private_ip" {
  value = module.s2vm.s2_vm_private_ips
}

output "s2_nsg_ids" {
  value = module.s2vm.s2_nsg_ids
  
}
