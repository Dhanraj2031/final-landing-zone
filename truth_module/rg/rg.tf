data "terraform_remote_state" "rg" {
    backend = "azurerm"
    config = {
    resource_group_name = "va-rg-dev-backend"
    storage_account_name = "vastdevbackend"
    container_name = "tfstate"
    key = "rg/default.tfstate"   
    }
  
}

output "rg_name" {
  value = data.terraform_remote_state.rg.outputs.rg_name
}   

output "rg_location" {
  value = data.terraform_remote_state.rg.outputs.rg_location
}
output "rg_id" {
  value = data.terraform_remote_state.rg.outputs.rg_id
}