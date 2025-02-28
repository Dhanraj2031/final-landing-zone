data "terraform_remote_state" "spoke1" {
    backend = "azurerm"
    config = {
    resource_group_name = "va-rg-dev-backend"
    storage_account_name = "vastdevbackend"
    container_name = "tfstate"
    key = "spoke1/default.tfstate"   
    }
  
}

output "vnet_name" {
  value = data.terraform_remote_state.spoke1.outputs.vnet_name
}   

output "vnet_id" {
  value = data.terraform_remote_state.spoke1.outputs.vnet_id
}  
output "subnet_name" {
  value = data.terraform_remote_state.spoke1.outputs.subnet_name  # Change this if the actual attribute name differs
}


output "subnet_ids" {
  value = data.terraform_remote_state.spoke1.outputs.subnet_ids
}  

output "address_space" {
  value = data.terraform_remote_state.spoke1.outputs.address_space
}  


