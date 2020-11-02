# Transit
module "transit_firenet_1" {
  source                 = "terraform-aviatrix-modules/azure-transit-firenet/aviatrix"
  version                = "2.0.0"
  cidr                   = var.transit1_cidr
  region                 = var.region
  account                = var.azure_account_name
  name                   = "demo-transit1"
  ha_gw                  = var.ha_gw
  firewall_image         = var.firewall_image
  firewall_image_version = var.firewall_image_version
}

# Spoke
module "spoke_azure_1" {
  source          = "terraform-aviatrix-modules/azure-spoke/aviatrix"
  version         = "2.0.0"
  name            = "demo-spoke1"
  cidr            = var.spoke1_cidr
  region          = var.region
  account         = var.azure_account_name
  transit_gw      = module.transit_firenet_1.transit_gateway.gw_name
}