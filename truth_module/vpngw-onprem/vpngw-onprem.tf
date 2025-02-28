data "terraform_remote_state" "vpngw-onprem" {
    backend = "azurerm"
    config = {
    resource_group_name = "va-rg-dev-backend"
    storage_account_name = "vastdevbackend"
    container_name = "tfstate"
    key = "vpngw-onprem/default.tfstate"   
    }
  
}

output "vpn_gateway_id" {
  value = data.terraform_remote_state.vpngw-onprem.outputs.vpn_gateway_id
}
output "vpn_pubip" {
  value = data.terraform_remote_state.vpngw-onprem.outputs.vpn_pubip
}

output "shared_key" {
  value = data.terraform_remote_state.vpngw-onprem.outputs.shared_key
}