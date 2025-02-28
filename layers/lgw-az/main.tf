module "lgw-az" {
    source = "../../modules/lgw-az" 
    rg_location = module.rg_truth.rg_location
    rg_name = module.rg_truth.rg_name
    address_space = module.address_space.address_space                                                    #onprem add space
    gateway_address = module.gateway_address.vpn_pubip                                                   #onprem vpn-gw pubip
    virtual_network_gateway_id = module.vpn_vnet_id.vpn_gateway_id                                        #vpngw-az id
    local_gateway_name = var.local_gateway_name
    connection_name = var.connection_name
  
}

module "rg_truth" {
  source = "../../truth_module/rg"
}

module "address_space" {
    source = "../../truth_module/onprem-vnet"
  
}

module "gateway_address" {
  source = "../../truth_module/vpngw-onprem"
}

module "vpn_vnet_id" {
    source = "../../truth_module/vpngw-az"
  
}