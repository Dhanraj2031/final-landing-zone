module "rg" {
  source = "../../truth_module/rg"
}

module "spoke1" {
  source ="../../truth_module/spoke1"
}

module "s1vm" {
  source = "../../modules/s1vm"
  s1_vm_config = var.s1_vm_config
  location = module.rg.rg_location
  resource_group_name = module.rg.rg_name
  subnet_id = module.spoke1.subnet_ids
  nsg_name = var.nsg_name
  nsg_rules = var.nsg_rules
  
}