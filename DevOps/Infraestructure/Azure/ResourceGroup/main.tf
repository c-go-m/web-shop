resource "azurerm_resource_group" "resource_group" {
  name      = "azrg${var.name}"
  location  = var.location
  tags      = var.tags
}