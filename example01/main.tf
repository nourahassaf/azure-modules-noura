module "resource_group" {
  source  = "../azurerm_resource_group"
  name    = local.resource_group_name
  location = local.location
  tags     = local.tags
}

module "vnet" {
  source              = "../azurerm_virtual_network"
  name                = local.vnet_name
  location            = local.location
  resource_group_name = module.resource_group.resource_group.name
  address_space       = local.address_space
  tags                = local.tags
}

module "subnets" {
  source              = "../azurerm_subnets"
  for_each            = local.subnet
  name                = each.key
  vnet_name           = module.vnet.virtual_network.name
  resource_group_name = module.resource_group.resource_group.name
  address_prefixes    = each.value.address_space
}
