output "vpn_gateway_id" {
  value = module.vpngw-az.vpn_gateway_id
}
output "vpn_pubip" {
  value = module.vpngw-az.vpn_pubip
}

output "shared_key" {
  value = module.vpngw-az.shared_key
}