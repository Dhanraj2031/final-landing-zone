s2vnet_name = "spoke2"
address_space = [ "10.90.48.0/20" ]
subnet_config = {
   "app2" = {
    name="app2_subnet"
    address_prefixes = ["10.90.48.0/24"]
  }
  "db2" = {
    name="db2_subnet"
    address_prefixes = ["10.90.49.0/24"]
  }
}