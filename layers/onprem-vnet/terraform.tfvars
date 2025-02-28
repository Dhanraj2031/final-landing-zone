vnet_name = "onprem-vnet"
address_space = [ "10.90.0.0/20" ]
snet_config = {
  snet1 = {
    name = "jump-snet"
    address_prefixes = ["10.90.3.0/24"]
  }

  snet2 = {
    name = "GatewaySubnet"
    address_prefixes = ["10.90.0.0/24"]
  }
}