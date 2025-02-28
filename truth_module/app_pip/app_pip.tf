data "terraform_remote_state" "app_pip"{
    backend = "azurerm"
     config = {
    resource_group_name = "va-rg-dev-backend"
    storage_account_name = "vastdevbackend"
    container_name = "tfstate"
    key = "app_pip/default.tfstate"   
    }
}

# output "app-pip_name" {
#     value = data.terraform_remote_state.app_pip.outputs.app-pip_name
  
# }


output "app_pip_id" {
    value = data.terraform_remote_state.app_pip.outputs.app_pip_id
  
}
output "app_pip_name" {
    value = data.terraform_remote_state.app_pip.outputs.app_pip_name
  
}

