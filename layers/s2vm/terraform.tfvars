s2_vm_config = {
  app2= {
    vm_name         = "app2-vm"
    nic_name       = "app2-nic"
    admin_username = "svm"
    admin_password = "Avm2234567890"
  }
  db2 = {
    vm_name             = "db2-vm"
    nic_name       = "db2-nic"
    admin_username = "svm"
    admin_password = "Avm2234567890"
  }
}
v2_nsg_name = {
  app2 = {
    name="v2-nsg1"
  }
  db2 = {
    name="v2-nsg2"
  }
}
v2_nsg_rules = {
  "Allow-rdp" = {
    name                       = "Allow-RDP"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                  = "Tcp"
    source_port_range         = "*"
    destination_port_range    = "3389"
    source_address_prefix     = "*"
    destination_address_prefix = "*"
  }
}