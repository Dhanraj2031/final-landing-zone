variable "rg_name" {
  type = string
}   
variable "rg_location" {
  type = string
}
variable "vpn_gateway_name" {
  type = string
}
variable "vpn_pubip_name" {
  type = string
}
variable "allocation_method" {
  type = string
}
variable "connection_name" {
  type = string
}
variable "gateway_address" {
  type = string
}
variable "sku" {
  type = string
}
variable "type" {
  type = string
}
variable "vpn_type" {
  type = string
}
variable "sku_vpn" {
  type = string
}
variable "ip_configuration_name" {
  type = string
}
variable "subnet_id" {
  type = string
}
variable "local_gateway_name" {
  type = string
}
variable "address_space" {
  type = list(string)
}