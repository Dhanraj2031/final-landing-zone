data "terraform_remote_state" "onprem-vm" {
    backend = "azurerm"
    config = {
    resource_group_name = "va-rg-dev-backend"
    storage_account_name = "vastdevbackend"
    container_name = "tfstate"
    key = "onprem-vm/default.tfstate"   
    }
  
}

output "vm_name" {
  value = data.terraform_remote_state.onprem-vm.outputs.vm_name
}
output "vm_id" {
  value = data.terraform_remote_state.onprem-vm.outputs.vm_id
}
output "pubip" {
  value = data.terraform_remote_state.onprem-vm.outputs.ip_address
}