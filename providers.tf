terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      #version = "=3.0.0"
    }
  }
  required_version = "=1.8.3"
}

provider "azurerm" {
  features {}

  client_id       = "d284b65d-5940-4e87-8aaa-74674314e75d"
  client_secret   = ".JI8Q~aII7NLLUdJlrRKnVm7SfkgRSCAyAcUpbP7"
  tenant_id       = "cea297cb-9bde-428d-9a6e-48fa9c582ed6"
  subscription_id = "2a79f2da-f098-4c8a-8e2a-f426682b1eac"
}
/* */