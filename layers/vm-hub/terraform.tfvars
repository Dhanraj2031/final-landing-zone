nic_name = "hub-vm-nic"
ip_configuration_name = "internal"
private_ip_address_allocation = "Dynamic"
vm_name = "hub-jump-vm"
vm_size = "Standard_D2s_v3"
admin_username = "dhanraj"
admin_password = "D@8904702873"
pubip_name = "hub-vm-pubip"
allocation_method = "Static"
nsg_name = "hub-vm-nsg"
nsg_rules = {
   "AllowHTTP" = {
      priority                   = 1000
      direction                  = "Inbound"
      access                     = "Allow"
      protocol                   = "Tcp"
      source_port_range          = "*"
      destination_port_range     = "80"
      source_address_prefix      = "*"
      destination_address_prefix = "*"
    },

     "AllowRDP" = {
      priority                   = 1010
      direction                  = "Inbound"
      access                     = "Allow"
      protocol                   = "Tcp"
      source_port_range          = "*"
      destination_port_range     = "3389"
      source_address_prefix      = "*"
      destination_address_prefix = "*"
    }
    
  }