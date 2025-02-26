module "hub-spokes" {
    source = "../../modules/route-table"
    rg_name = module.rg_truth.rg_name
    rg_location = module.rg_truth.rg_location
    subnet_id = module.subnet.snet2_id
    route_name1 = var.route_name1
    route_name2 = var.route_name2
    rt_table_name =  var.rt_table_name
    next_hop_type = var.next_hop_type
    next_hop_in_ip_address = module.hop_ip.firewall_private_ip
    spoke1_address_space   = tolist(module.spoke1.address_space)[0]
    spoke2_address_space   = tolist(module.spoke2.address_space)[0]
  
}

module "rg_truth" {
    source = "../../truth_module/rg"
}

module "subnet" {
    source = "../../truth_module/hub-vnet"
  
}
module "hop_ip" {
    source = "../../truth_module/firewall"
  
}
module "spoke1" {
    source = "../../truth_module/spoke1"
  
}
module "spoke2" {
  source = "../../truth_module/spoke2"
}