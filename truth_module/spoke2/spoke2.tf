data "terraform_remote_state" "spoke2" {
    backend = "azurerm"
    config = {
    resource_group_name = "va-rg-dev-backend"
    storage_account_name = "vastdevbackend"
    container_name = "tfstate"
    key = "spoke2/default.tfstate"   
    }
  
}

output "s2vnet_name" {
  value = data.terraform_remote_state.spoke2.outputs.vnet_name
}   

output "s2vnet_id" {
  value = data.terraform_remote_state.spoke2.outputs.vnet_id
}  
output "subnet_name" {
  value = data.terraform_remote_state.spoke2.outputs.subnet_name

} 

output "subnet_id" {
  value = data.terraform_remote_state.spoke2.outputs.subnet_id
}  
output "address_space" {
  value = data.terraform_remote_state.spoke2.outputs.address_space
}  