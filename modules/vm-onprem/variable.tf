variable "rg_name" {
  type = string
}
variable "rg_location" {
  type = string
}
variable "nsg_name" {
  type = string
}
variable "nsg_rules" {
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
variable "nic_name" {
  type = string
}
variable "ip_configuration_name" {
  type = string
}
variable "private_ip_address_allocation" {
  type = string
}
variable "snet1_id" {
  type = string
}
variable "pubip_name" {
  type = string
}
variable "allocation_method" {
  type = string
}
variable "vm_name" {
  type = string
}
variable "vm_size" {
  type = string
}
variable "admin_username" {
  type = string
}
variable "admin_password" {
  type = string
}
