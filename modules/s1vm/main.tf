resource "azurerm_network_interface" "nic" {
  for_each = var.s1_vm_config
  name                = each.value.nic_name
  location            =var.location
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = var.subnet_id[each.key]
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_network_security_group" "s1_nsg" {
  for_each = var.nsg_name
  name                =each.value.name
  location            = var.location
  resource_group_name = var.resource_group_name

  dynamic "security_rule" {
    for_each = var.nsg_rules
    iterator = rule
    content {
      name                       = rule.key
      priority                   = rule.value.priority
      direction                  = rule.value.direction
      access                     = rule.value.access
      protocol                   = rule.value.protocol
      source_port_range          = rule.value.source_port_range
      destination_port_range     = rule.value.destination_port_range
      source_address_prefix      = rule.value.source_address_prefix
      destination_address_prefix = rule.value.destination_address_prefix
    }
  }
}


resource "azurerm_windows_virtual_machine" "vm" {
  for_each = var.s1_vm_config
  name                  = each.value.vm_name
  location            = var.location
  resource_group_name = var.resource_group_name
  size                = "Standard_D2s_v3"
  admin_username = each.value.admin_username
  admin_password = each.value.admin_password
  network_interface_ids = [azurerm_network_interface.nic[each.key].id]

  os_disk {
    name              = "${each.value.vm_name}_os_disk"
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter"
    version   = "latest"
  }
}

resource "azurerm_network_interface_security_group_association" "nic_nsg_ass" {
  for_each = var.s1_vm_config
  network_interface_id = azurerm_network_interface.nic[each.key].id
  network_security_group_id = azurerm_network_security_group.s1_nsg[each.key].id
  
}
