s1vnet_name = "spoke1_vnet"
address_space = [ "10.90.16.0/20" ]
subnet_config = {
   "app1" = {
    name="app1_subnet"
    address_prefixes = ["10.90.16.0/24"]
  }
  "db1" = {
    name="db1_subnet"
    address_prefixes = ["10.90.17.0/24"]
  }
}