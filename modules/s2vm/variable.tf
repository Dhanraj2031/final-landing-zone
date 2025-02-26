
variable "resource_group_name" {
  default = ""
  type =  string
}

variable "location" {
  default = ""
  type = string
}
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
  type        = map(string)
  

} 
variable "v2_nsg_name" {
  type = map(object({
    name = string
  }))
}
variable "nsg_rules" {
  description = "Rules for the Network Security Group"
  type        = map(object({
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


