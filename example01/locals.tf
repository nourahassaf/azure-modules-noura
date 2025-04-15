locals {
  resource_group_name = "devops1-rg-noura"
  vnet_name           = "devops1-vnet-noura"
  location            = "West Europe"

  tags = {
    bootcamp = "DevOps1"
  }

  address_space = ["10.0.0.0/16"]

  subnet = {
    public_subnet = {
      address_space = ["10.0.2.0/24"]
    }
    private_subnet = {
      address_space = ["10.0.3.0/24"]
    }
  }
}
