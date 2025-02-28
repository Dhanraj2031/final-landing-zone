variable "rg_name" {
    type = string
}

variable "rg_location" {
  type = string
}
variable "local_gateway_name" {
  type = string
}
variable "gateway_address" {
  type = string
}
variable "address_space" {
  type = list(string)
}
variable "connection_name" {
  type = string
}
variable "virtual_network_gateway_id" {
    type = string
  
}
