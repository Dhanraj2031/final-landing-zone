module "Peering" {
  source = "../../modules/peering"
  rg_name = module.rg_truth.rg_name
  spoke1_vnet_name = module.spoke1.vnet_name
  spoke2_vnet_name = module.spoke2.s2vnet_name
  spoke1_vnet_id = module.spoke1.vnet_id
  spoke2_vnet_id = module.spoke2.s2vnet_id
  hub_vnet_name = module.vnet_truth.vnet_name
  hub_vnet_id = module.vnet_truth.vnet_id


}

module "rg_truth" {
  source = "../../truth_module/rg"
}

module "vnet_truth" {
  source = "../../truth_module/hub-vnet"
}
module "spoke1" {
    source = "../../truth_module/spoke1"
  
}

module "spoke2" {
  source = "../../truth_module/spoke2"
}