vnet_name = "hub-vnet"
address_space = [ "10.90.32.0/20" ]
snet_config = {
  snet1 = {
    name = "jump-hub-snet"
    address_prefixes = ["10.90.33.0/24"]
  }

  snet2 = {
    name = "GatewaySubnet"
    address_prefixes = ["10.90.32.0/24"]
  }

  snet3 = {
    name = "AzureFirewallSubnet"
    address_prefixes = ["10.90.34.0/24"]
  }
}