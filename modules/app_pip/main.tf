resource "azurerm_public_ip" "app_pip" {
  name                = var.app_pip
  resource_group_name = var.rg_name
  location            = var.rg_location
  allocation_method   = var.allocation_method

}
