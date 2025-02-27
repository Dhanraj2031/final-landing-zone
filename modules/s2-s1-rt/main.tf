resource "azurerm_route_table" "sp2-sp1" {
  name                = var.rt_table_name
  location            = var.rg_location
  resource_group_name = var.rg_name

  route {
    name                   = var.route_name_1
    address_prefix         = var.spoke1_address_space
    next_hop_type          = var.next_hop_type
    next_hop_in_ip_address = var.next_hop_in_ip_address
  }
   route {
  name                   = var.route_name_2
  address_prefix         = var.onprem_address_space
  next_hop_type          = var.next_hop_type
  next_hop_in_ip_address = var.next_hop_in_ip_address
  }
}

resource "azurerm_subnet_route_table_association" "rt_table_ass1" {
    
  subnet_id      = var.subnet_id1
  route_table_id = azurerm_route_table.sp2-sp1.id
}

resource "azurerm_subnet_route_table_association" "rt_table_ass2" {
    
  subnet_id      = var.subnet_id2
  route_table_id = azurerm_route_table.sp2-sp1.id
}