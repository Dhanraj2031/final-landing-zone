module "s1-s2-rt" {
    source = "../../modules/s1-s2-rt"
    rg_location = module.rg_truth.rg_location
    rg_name = module.rg_truth.rg_name
    subnet_id1             = module.subnet.subnet_ids["app1"]
    subnet_id2             = module.subnet.subnet_ids["db1"]
    spoke2_address_space = tolist(module.spoke2.address_space)[0]
    next_hop_in_ip_address = module.hop_ip.firewall_private_ip
    next_hop_type = var.next_hop_type
    rt_table_name = var.rt_table_name
    onprem_address_space =tolist(module.onprem_address.address_space)[0]
    route_name_1 = var.route_name_1
    route_name_2 = var.route_name_2

  
}

module "spoke2" {
  source = "../../truth_module/spoke2"
}

module "rg_truth" {
    source = "../../truth_module/rg"
}

module "hop_ip" {
    source = "../../truth_module/firewall"
  
}
module "subnet" {
  source = "../../truth_module/spoke1"
}
module "onprem_address" {
  source = "../../truth_module/onprem-vnet"
  
}