resource "azurerm_resource_group" "backend1" {
  name     = var.rg_name
  location = var.rg_location
}
