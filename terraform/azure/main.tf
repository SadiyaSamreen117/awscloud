provider "azurerm" {
  features {}
  subscription_id = ""
  tenant_id = ""
}

resource "azurerm_resource_group" "example" {
  name = "example-resources"
  location = "westus"
}