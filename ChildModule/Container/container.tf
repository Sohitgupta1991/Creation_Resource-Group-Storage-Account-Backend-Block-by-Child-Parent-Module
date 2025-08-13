resource "azurerm_storage_container" "container" {
  name                  = var.container_name
  storage_account_id    = data.azurerm_storage_account.addekadabba91.id
  container_access_type = "private"
}

data "azurerm_storage_account" "addekadabba91" {
  name                = "backendkaadda90"
  resource_group_name = var.rg_name
}