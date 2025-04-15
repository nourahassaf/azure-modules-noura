resource "azurerm_subnet" "subnet" {
  name                 = var.name
  virtual_network_name = var.vnet_name
  resource_group_name  = var.resource_group_name
  address_prefixes     = var.address_prefixes
}
