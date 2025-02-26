variable "rg_name" {
  type = string
}
variable "rg_location" {
  type = string
}
variable "pubip_name" {
  type = string
}
variable "allocation_method" {
  type = string
}
variable "sku" {
  type = string
}
variable "sku_name" {
  type = string
}
variable "sku_tier" {
  type = string
}
variable "firewall_name" {
  type = string
}
variable "subnet_id" {
  type = string
}
variable "firewall_policy_name" {
  type = string
}

# variable "private_ip_address" {
#   type = string
# }
# # variable "source_addresses" {
  



variable "on_premises_cidr" {
  description = "CIDR block for on-premises network"
  type        = list(string)
}

variable "spoke1_cidr" {
  description = "CIDR block for Spoke1 network"
  type        = list(string)
}

variable "spoke2_cidr" {
  description = "CIDR block for Spoke2 network"
  type        = list(string)
}
