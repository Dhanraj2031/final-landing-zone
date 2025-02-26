resource "azurerm_virtual_network" "s1vnet" {
  name = var.s1vnet
  location            =var.location
  resource_group_name = var.resource_group_name
  address_space =var.address_space

}

resource "azurerm_subnet" "subnet_config" {
  for_each = var.subnet_config
  name = each.value.name
  resource_group_name = var.resource_group_name
  virtual_network_name =var.s1vnet
  address_prefixes = each.value.address_prefixes
  

  depends_on = [azurerm_virtual_network.s1vnet]
}