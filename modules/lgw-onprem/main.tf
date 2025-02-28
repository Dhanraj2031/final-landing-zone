# Step 3: Create the Local Network Gateway (On-Premises VPN Device)
resource "azurerm_local_network_gateway" "on_prem_gateway" {
  name                = var.local_gateway_name
  location            = var.rg_location 
  resource_group_name = var.rg_name
  gateway_address     = var.gateway_address  # pubip of vpngw-az
  address_space       = var.address_space     #add space of hub-vnet

  
}

resource "azurerm_virtual_network_gateway_connection" "connection" {
  name                = var.connection_name
  location            = var.rg_location
  resource_group_name = var.rg_name

  type                       = "IPsec"
  virtual_network_gateway_id = var.virtual_network_gateway_id
  local_network_gateway_id   = azurerm_local_network_gateway.on_prem_gateway.id

  shared_key = "D@8904702873"

    depends_on = [ 
    azurerm_local_network_gateway.on_prem_gateway  
  ]
}