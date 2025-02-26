data "terraform_remote_state" "firewall" {
    backend = "azurerm"
    config = {
    resource_group_name = "va-rg-dev-backend"
    storage_account_name = "vastdevbackend"
    container_name = "tfstate"
    key = "firewall/default.tfstate"   
    }
  
}

output "firewall_public_ip" {
    value = data.terraform_remote_state.firewall.outputs.firewall_public_ip 
  
}

output "firewall_private_ip" {
  value = data.terraform_remote_state.firewall.outputs.firewall_private_ip
}