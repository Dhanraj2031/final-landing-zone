variable "vnet_name" {
    type = string
}

variable "address_space" {
  type = list(string)
}

variable "snet_config" {
  type = map(object({
    name = string
    address_prefixes = list(string)
  }))
}
