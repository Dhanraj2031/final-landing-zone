resource "azurerm_route_table" "hub-spokes" {
  name                = var.rt_table_name
  location            = var.rg_location
  resource_group_name = var.rg_name

  route {
    name                   = var.route_name1
    address_prefix         = var.spoke1_address_space
    next_hop_type          = var.next_hop_type
    next_hop_in_ip_address = var.next_hop_in_ip_address
  }

   route {
    name                   = var.route_name2
    address_prefix         = var.spoke2_address_space
    next_hop_type          = var.next_hop_type
    next_hop_in_ip_address = var.next_hop_in_ip_address
  }
}

resource "azurerm_subnet_route_table_association" "rt_table_ass" {
  subnet_id      = var.subnet_id
  route_table_id = azurerm_route_table.hub-spokes.id
}