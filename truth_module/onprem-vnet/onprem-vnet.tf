data "terraform_remote_state" "onprem-vnet" {
    backend = "azurerm"
    config = {
    resource_group_name = "va-rg-dev-backend"
    storage_account_name = "vastdevbackend"
    container_name = "tfstate"
    key = "onprem-vnet/default.tfstate"   
    }
  
}

output "vnet_name" {
  value = data.terraform_remote_state.onprem-vnet.outputs.vnet_name
}
output "vnet_id" {
  value = data.terraform_remote_state.onprem-vnet.outputs.vnet_id
}
output "address_space" {
  value = data.terraform_remote_state.onprem-vnet.outputs.address_space
}
output "snet1_name" {
  value = data.terraform_remote_state.onprem-vnet.outputs.snet1_name

}
output "snet1_id" {
  value = data.terraform_remote_state.onprem-vnet.outputs.snet1_id
}   
output "snet2_name" {
  value = data.terraform_remote_state.onprem-vnet.outputs.snet2_name
}
output "snet2_id" {
  value = data.terraform_remote_state.onprem-vnet.outputs.snet2_id
}