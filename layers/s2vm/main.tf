module "rg" {
  source = "../../truth_module/rg"
}

module "spoke2" {
  source ="../../truth_module/spoke2"
}

module "s2vm" {
  source = "../../modules/s2vm"
  s2_vm_config = var.s2_vm_config
  location = module.rg.rg_location
  resource_group_name = module.rg.rg_name
  subnet_id = module.spoke2.subnet_id
  v2_nsg_name = var.v2_nsg_name
  nsg_rules = var.v2_nsg_rules
  
}