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
  private_ip_address = var.private_ip_address
  allocation_method = var.allocation_method
  pubip_name = var.pubip_name
}

module "rg_truth" {
  source = "../../truth_module/rg"
}

module "snet_truth" {
  source = "../../truth_module/hub-vnet"
}