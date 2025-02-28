output "vpn_gateway_id" {
  value = module.vpngw-onprem.vpn_gateway_id
}
output "vpn_pubip" {
  value = module.vpngw-onprem.vpn_pubip
}

output "shared_key" {
  value = module.vpngw-onprem.shared_key
}