output "s1_vm_id" {
  description = "IDs of the created VMs"
  value = module.s1vm.s1_vm_ids     
}


output "s1_vm_nic_id" {
  description = "IDs of the created NICs"
  value = module.s1vm.s1_vm_nic_ids
}
output "s1_vm_private_ip" {
  value = module.s1vm.s1_vm_private_ips
}

output "s1_nsg_ids" {
  value = module.s1vm.s1_nsg_ids
  
}
