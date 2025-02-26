
# Define variables
variable "resource_group_name" {
  default = ""
  type =  string
}

variable "location" {
  default = ""
  type = string
}

variable "s1vnet" {
  type = string
  
}
 variable "address_space" {
  type = list(string)
   
 }

variable "subnet_config" {
type = map(object({
  name = string
  address_prefixes=list(string)
}))

}