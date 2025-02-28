module "lgw-onprem" {
    source = "../../modules/lgw-onprem" 
    rg_location = module.rg_truth.rg_location
    rg_name = module.rg_truth.rg_name
    address_space = concat(
        module.hub_vnet_truth.address_space,
        module.spoke1_truth.address_space,
        module.spoke2_truth.address_space
    )
    gateway_address = module.gateway_address.vpn_pubip
    virtual_network_gateway_id = module.vpn_vnet_id.vpn_gateway_id
    local_gateway_name = var.local_gateway_name
    connection_name = var.connection_name
  
}

module "rg_truth" {
  source = "../../truth_module/rg"
}

module "gateway_address" {
    source = "../../truth_module/vpngw-az"
  
}

module "vpn_vnet_id" {
    source = "../../truth_module/vpngw-onprem"
  
}

module "hub_vnet_truth" {
  source = "../../truth_module/hub-vnet"
}

module "spoke1_truth" {
  source = "../../truth_module/spoke1"
}

module "spoke2_truth" {
  source = "../../truth_module/spoke2"
}