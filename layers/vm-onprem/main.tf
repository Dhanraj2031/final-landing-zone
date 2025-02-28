module "vm-onprem" {
    source = "../../modules/vm-onprem"
    rg_name = module.rg_truth.rg_name
    rg_location = module.rg_truth.rg_location
    snet1_id = module.snet_truth.snet1_id
    admin_password = var.admin_password 
    nsg_name = var.nsg_name
    nsg_rules = var.nsg_rules
    admin_username = var.admin_username
    vm_size = var.vm_size
    vm_name = var.vm_name
    nic_name = var.nic_name
    allocation_method = var.allocation_method
    pubip_name = var.pubip_name
    private_ip_address_allocation = var.private_ip_address_allocation
    ip_configuration_name = var.ip_configuration_name

  
}

module "rg_truth" {
    source = "../../truth_module/rg"
  
}

module "snet_truth" {
  source = "../../truth_module/onprem-vnet"
}