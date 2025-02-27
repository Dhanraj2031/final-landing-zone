# Step 1: Define the Public IP for the VPN Gateway
resource "azurerm_public_ip" "vpn_pubip" {
  name                = var.vpn_pubip_name
  location            = var.rg_location  
  resource_group_name = var.rg_name
  allocation_method   = var.allocation_method         
  sku                 = var.sku        
}

# Step 2: Create the VPN Gateway in Azure
resource "azurerm_virtual_network_gateway" "vpn_gateway" {
  name                = var.vpn_gateway_name
  location            = var.rg_location  
  resource_group_name = var.rg_name
  type                = var.type              
  vpn_type            = var.vpn_type       
  sku                 = var.sku_vpn        
  active_active       = false


  # Associate the Public IP with the VPN Gateway
  ip_configuration {
    name                          = var.ip_configuration_name
    public_ip_address_id          = azurerm_public_ip.vpn_pubip.id
    private_ip_address_allocation = "Dynamic"
    subnet_id = var.subnet_id
  }
   depends_on = [azurerm_public_ip.vpn_pubip] 
}

# Step 3: Create the Local Network Gateway (On-Premises VPN Device)
resource "azurerm_local_network_gateway" "on_prem_gateway" {
  name                = var.local_gateway_name
  location            = var.rg_location 
  resource_group_name = var.rg_name
  gateway_address     = var.gateway_address  # Correct reference
  address_space       = var.address_space 

  depends_on = [azurerm_public_ip.vpn_pubip]
}

resource "azurerm_virtual_network_gateway_connection" "connection" {
  name                = var.connection_name
  location            = var.rg_location
  resource_group_name = var.rg_name

  type                       = "IPsec"
  virtual_network_gateway_id = azurerm_virtual_network_gateway.vpn_gateway.id
  local_network_gateway_id   = azurerm_local_network_gateway.on_prem_gateway.id

  shared_key = "D@8904702873"

    depends_on = [
    azurerm_virtual_network_gateway.vpn_gateway,  
    azurerm_local_network_gateway.on_prem_gateway  
  ]
}