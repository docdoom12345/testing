resource "azurerm_resource_group" "example" {
  name     = "example-resources1"
  location = "West Europe"
}

resource "azurerm_virtual_network" "example" {
  name                = "example-network"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  address_space       = ["10.0.0.0/16"]
  dynamic "subnet" {
    for_each = var.subnets
    content {
      name           = subnet.value["name"]
      address_prefix = subnet.value["address_prefix"]
    }
  }



  tags = {
    environment = "Production"
  }
}