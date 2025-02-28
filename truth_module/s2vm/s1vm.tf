data "terraform_remote_state" "s1vm" {
    backend = "azurerm"
    config = {
    resource_group_name = "va-rg-dev-backend"
    storage_account_name = "vastdevbackend"
    container_name = "tfstate"
    key = "s1vm/default.tfstate"   
    }
  
}

output "s1_vm_ids" {
  value = data.terraform_remote_state.s1vm.outputs.s1_vm_id
}   

output "s1_vm_nic_ids" {
  value = data.terraform_remote_state.s1vm.outputs.s1_vm_nic_id
}   


output "s1_vm_private_ips" {
  value = data.terraform_remote_state.s1vm.outputs.s1_vm_private_ip
}   

output "s1_nsg_ids" {
  value = data.terraform_remote_state.s1vm.outputs.s1_nsg_ids
}
