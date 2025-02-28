module "app_pip" {
    source = "../../modules/app_pip"
    app_pip = var.app_pip
    rg_location = module.rg.rg_location
    rg_name =  module.rg.rg_name
    allocation_method = var.allocation_method
}

module "rg" {
  source = "../../truth_module/rg"
}

# module "vnet1_truth" {
#     source = "../../truth_modules/vnet1"
  
# }