resource "azurerm_storage_account" "storage-account" {
  name                      = "azsa${var.name}"
  resource_group_name       = "azrg${var.name}"
  location                  = var.location
  tags                      = var.tags
  account_tier              = "Standard"
  account_replication_type  = "LRS"
  account_kind              = "Storage"
}