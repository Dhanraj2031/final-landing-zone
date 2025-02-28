module "vpngw-onprem" {
    source = "../../modules/vpngw-onprem"
    rg_name = module.rg_truth.rg_name
    rg_location = module.rg_truth.rg_location
    subnet_id = module.snet_truth.snet2_id
    # address_space = module.address_space_truth.address_space
    address_space = var.address_space
    gateway_address = module.gateway_truth.vpn_pubip
    sku = var.sku
    sku_vpn = var.sku_vpn
    type = var.type
    vpn_gateway_name = var.vpn_gateway_name
    vpn_type = var.vpn_type
    vpn_pubip_name = var.vpn_pubip_name
    allocation_method = var.allocation_method
    connection_name = var.connection_name
    local_gateway_name = var.local_gateway_name
    ip_configuration_name = var.ip_configuration_name
  
}

module "rg_truth" {
  source = "../../truth_module/rg"
}

module "snet_truth" {
    source = "../../truth_module/onprem-vnet"
  
}

module "gateway_truth" {
  
  source = "../../truth_module/vpngw-az"
}

# module "address_space_truth" {
#   source = "../../truth_module/hub-vnet"
# }