module "hub-vnet" {
    source = "../../modules/hub-vnet"
    vnet_name = var.vnet_name
    rg_name = module.rg_truth.rg_name
    rg_location = module.rg_truth.rg_location
    snet_config = var.snet_config
    address_space = var.address_space
  
}

module "rg_truth" {
    source = "../../truth_module/rg"
  
}