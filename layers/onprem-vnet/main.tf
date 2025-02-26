module "onprem-vnet" {
    source = "../../modules/onprem-vnet"
    vnet_name = var.vnet_name
    address_space = var.address_space
    snet_config = var.snet_config
    rg_name = module.rg_truth.rg_name
    rg_location = module.rg_truth.rg_location
  
}



module "rg_truth" {
    source = "../../truth_module/rg"
  
}

