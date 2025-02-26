resource "azurerm_virtual_network_peering" "spoke1_to_hub" {
  name                      = "spoke1-to-hub"
  resource_group_name       = var.rg_name
  virtual_network_name      = var.spoke1_vnet_name
  remote_virtual_network_id = var.hub_vnet_id
 
  allow_virtual_network_access  = true
  allow_forwarded_traffic       = true
  allow_gateway_transit         = false
  use_remote_gateways           = true
}
 
resource "azurerm_virtual_network_peering" "hub_to_spoke1" {
  name                      = "hub-to-spoke1"
  resource_group_name       = var.rg_name
  virtual_network_name      = var.hub_vnet_name
  remote_virtual_network_id = var.spoke1_vnet_id
 
  allow_virtual_network_access  = true
  allow_forwarded_traffic       = true
  allow_gateway_transit         = true
  use_remote_gateways           = false
}
 
resource "azurerm_virtual_network_peering" "spoke2_to_hub" {
  name                      = "spoke2-to-hub"
  resource_group_name       = var.rg_name
  virtual_network_name      = var.spoke2_vnet_name
  remote_virtual_network_id = var.hub_vnet_id
 
  allow_virtual_network_access  = true
  allow_forwarded_traffic       = true
  allow_gateway_transit         = false
  use_remote_gateways           = true
}
 
resource "azurerm_virtual_network_peering" "hub_to_spoke2" {
  name                      = "hub-to-spoke2"
  resource_group_name       = var.rg_name
  virtual_network_name      = var.hub_vnet_name
  remote_virtual_network_id = var.spoke2_vnet_id
 
  allow_virtual_network_access  = true
  allow_forwarded_traffic       = true
  allow_gateway_transit         = true
  use_remote_gateways           = false
}




# # Create VNet Peering from Hub VNet to Spoke1 VNet
# resource "azurerm_virtual_network_peering" "spoke1_to_hub" {
#   name                      = "spoke1_to_hub"
#   resource_group_name       = var.rg_name
#   virtual_network_name      = var.vnet_name
#   remote_virtual_network_id = var.vnet_id1

#   allow_forwarded_traffic = true

#   # Enable the hub to forward traffic to spoke1
#   allow_gateway_transit = true

#   # Allow spoke1 to use hub's remote gateway or route server
#   use_remote_gateways   = false

#   # Allow traffic from spoke1 to hub
#   allow_virtual_network_access = true

# }


# # Create VNet Peering from Hub VNet to Spoke2 VNet
# resource "azurerm_virtual_network_peering" "spoke2_to_hub" {
#   name                      = "spoke2_to_hub"
#   resource_group_name       = var.rg_name
#   virtual_network_name      = var.vnet_name
#   remote_virtual_network_id = var.vnet_id2


#   allow_forwarded_traffic = true
#   # Enable the hub to forward traffic to spoke2
#   allow_gateway_transit = true

#   # Allow spoke2 to use hub's remote gateway or route server
#   use_remote_gateways   = false

#   # Allow traffic from spoke2 to hub
#   allow_virtual_network_access = true

 
# }