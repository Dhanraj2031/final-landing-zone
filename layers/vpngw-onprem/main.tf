module "vpngw-onprem" {
    source = "../../modules/vpngw-onprem"
    rg_name = module.rg_truth.rg_name
    rg_location = module.rg_truth.rg_location
    subnet_id = module.snet_truth.snet2_id
    sku = var.sku
    sku_vpn = var.sku_vpn
    type = var.type
    vpn_gateway_name = var.vpn_gateway_name
    vpn_type = var.vpn_type
    vpn_pubip_name = var.vpn_pubip_name
    allocation_method = var.allocation_method
    ip_configuration_name = var.ip_configuration_name
  
}

module "rg_truth" {
  source = "../../truth_module/rg"
}

module "snet_truth" {
    source = "../../truth_module/onprem-vnet"
  
}

