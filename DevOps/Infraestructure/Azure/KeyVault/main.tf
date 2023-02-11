resource "azurerm_key_vault" "key-vault" {
  name                        = "azkv${var.name}"
  resource_group_name         = "azrg${var.name}"
  location                    = var.location
  tags                        = var.tags
  tenant_id                   = var.tenant-id
  soft_delete_retention_days  = 7
  sku_name                    = "standard"
  access_policy {
    tenant_id                 = var.tenant-id
    object_id                 = var.object-id
    key_permissions           = ["Get", "Create", "Delete", "Import", "List", "Purge", "Update", "Recover"]
    secret_permissions        = ["Set", "Get", "Delete", "List", "Purge", "Recover"]
  }
}

resource "azurerm_key_vault_secret" "key-vault-secret" {  
  name         = "kv-azas${var.name}"
  value        = var.secret-sa
  key_vault_id = azurerm_key_vault.key-vault.id
}