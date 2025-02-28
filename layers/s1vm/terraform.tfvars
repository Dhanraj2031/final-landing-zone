s1_vm_config = {
  app1= {
    vm_name             = "app1-vm"
    nic_name       = "app1-nic"
    admin_username = "svm"
    admin_password = "Avm1234567890"
  }
  db1 = {
    vm_name             = "db1-vm"
    nic_name       = "db1-nic"
    admin_username = "svm"
    admin_password = "Avm1234567890"
  }
}
nsg_name = {
  app1 = {
    name="v1-nsg1"
  }
  db1 = {
    name="v1-nsg2"
  }
}
nsg_rules = {
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