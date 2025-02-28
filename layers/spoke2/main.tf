module "spoke2" {
  source = "../../modules/spoke2"
  s2vnet = var.s2vnet_name
  location = module.rg.rg_location
  resource_group_name = module.rg.rg_name
  subnet_config = var.subnet_config
  address_space = var.address_space

}
module "rg" {
  source = "../../truth_module/rg"
}
