resource "azurerm_public_ip" "firewall-pubip" {
  name                = var.pubip_name
  location            = var.rg_location
  resource_group_name = var.rg_name
  allocation_method   = var.allocation_method        #"Static"
  sku                 = var.sku                       #"Standard"
}

resource "azurerm_firewall_policy" "firewall-pol" {
  name                = var.firewall_policy_name
  resource_group_name = var.rg_name
  location            = var.rg_location
}

resource "azurerm_firewall" "firewall" {
  name                = var.firewall_name
  location            = var.rg_location
  resource_group_name = var.rg_name
  sku_name            = var.sku_name                  #"AZFW_VNet"
  sku_tier            = var.sku_tier                   #"Standard"
  firewall_policy_id  = azurerm_firewall_policy.firewall-pol.id

  ip_configuration {
    name                 = "configuration"
    subnet_id            = var.subnet_id
    public_ip_address_id = azurerm_public_ip.firewall-pubip.id
    private_ip_address   = var.private_ip_address                  #["10.90.34.0"]
  }
}

