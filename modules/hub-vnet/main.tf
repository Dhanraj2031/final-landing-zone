resource "azurerm_virtual_network" "hub-vnet" {
  name                = var.vnet_name
  location            = var.rg_location
  resource_group_name = var.rg_name
  address_space       = var.address_space

}

resource "azurerm_subnet" "snet" {
  for_each = var.snet_config
  name                 = each.value.name
  resource_group_name  = var.rg_name
  virtual_network_name = azurerm_virtual_network.hub-vnet.name
  address_prefixes     = each.value.address_prefixes
}
