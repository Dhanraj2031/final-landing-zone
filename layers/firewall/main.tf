module "firewall" {
  source = "../../modules/firewall"
  rg_name = module.rg_truth.rg_name
  rg_location = module.rg_truth.rg_location
  subnet_id = module.snet_truth.snet3_id
  firewall_name = var.firewall_name
  firewall_policy_name = var.firewall_policy_name
  sku = var.sku
  sku_name = var.sku_name
  sku_tier = var.sku_tier

  allocation_method = var.allocation_method
  pubip_name = var.pubip_name
  spoke1_cidr = module.spoke1.address_space
  spoke2_cidr = module.spoke2.address_space
  on_premises_cidr = module.on-on_premises_cidr.address_space


  
}

module "rg_truth" {
  source = "../../truth_module/rg"
}

module "snet_truth" {
  source = "../../truth_module/hub-vnet"
}
 
 module"spoke1"{
  source = "../../truth_module/spoke1"
 }
  module"spoke2"{
  source = "../../truth_module/spoke2"
 }
module "on-on_premises_cidr" {
  source = "../../truth_module/onprem-vnet"
  
}
