resource "azurerm_public_ip" "firewall-pubip" {
  name                = var.pubip_name
  location            = var.rg_location
  resource_group_name = var.rg_name
  allocation_method   = var.allocation_method        #"Static"
  sku                 = var.sku                       #"Standard"
}

resource "azurerm_firewall_policy" "firewall-pol" {
  name                = var.firewall_policy_name
  resource_group_name = var.rg_name
  location            = var.rg_location
}

resource "azurerm_firewall" "firewall" {
  name                = var.firewall_name
  location            = var.rg_location
  resource_group_name = var.rg_name
  sku_name            = var.sku_name                  #"AZFW_VNet"
  sku_tier            = var.sku_tier                   #"Standard"
  firewall_policy_id  = azurerm_firewall_policy.firewall-pol.id

  ip_configuration {
    name                 = "configuration"
    subnet_id            = var.subnet_id
    public_ip_address_id = azurerm_public_ip.firewall-pubip.id

  }
}

resource "azurerm_firewall_policy_rule_collection_group" "example" {
  name               = "vpn-fwpolicy-rcg"
  firewall_policy_id = azurerm_firewall_policy.firewall-pol.id
  priority           = 500

 

  # Network Rule Collection
  network_rule_collection {
    name     = "network_rule_collection1"
    priority = 110
    action   = "Allow"

    rule {
      name                  = "network_rule_collection1_rule1"
      protocols             = ["TCP", "UDP"]
      source_addresses      = var.on_premises_cidr
      destination_addresses = var.spoke1_cidr
      destination_ports     = ["*"]
    }
  }
  network_rule_collection {
    name     = "network_rule_collection2"
    priority = 120
    action   = "Allow"

    rule {
      name                  = "network_rule_collection1_rule2"
      protocols             = ["TCP", "UDP"]
      source_addresses      = var.on_premises_cidr
      destination_addresses = var.spoke2_cidr
      destination_ports     = ["*"]
    }
  }
}
