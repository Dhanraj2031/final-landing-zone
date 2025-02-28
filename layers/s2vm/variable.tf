
variable "s2_vm_config" {
  description = "Map of VMs and NICs"
    type        = map(object({
    vm_name= string
    nic_name = string
    admin_username=string
    admin_password=string
  }))
}

variable "subnet_id" {
  type = map(string)
  default = {
    "app1" = " "
    "db1" = " "
  }
  
}



variable "v2_nsg_name" {
  type = map(object({
    name = string
  }))
}

variable "v2_nsg_rules" {
  description = "Map of Network Security Group rules."
  type = map(object({
    priority                   = number
    direction                  = string
    access                     = string
    protocol                   = string
    source_port_range          = string
    destination_port_range     = string
    source_address_prefix      = string
    destination_address_prefix = string
  }))
}