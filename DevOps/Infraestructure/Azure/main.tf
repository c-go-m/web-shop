terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.42.0"
    }
  }
}

provider "azurerm" {
  features {
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }
  }
}

data "azurerm_client_config" "current" {}

module "resource-group" {
  source        = "./ResourceGroup"
  name          = var.proyect
  location      = var.location
  tags          = var.tags
}

module "storage-account" {
  depends_on = [module.resource-group]
  source        = "./StorageAccount"
  name          = var.proyect
  location      = var.location
  tags          = var.tags 
}

module "key-vault" {
  depends_on = [module.resource-group,module.storage-account]
  source        = "./KeyVault"
  name          = var.proyect
  location      = var.location
  tags          = var.tags
  tenant-id     = data.azurerm_client_config.current.tenant_id
  object-id     = data.azurerm_client_config.current.object_id
  secret-sa     = module.storage-account.connection-string
}

