# Versión de Terraform y proveedores requeridos.
terraform {
  required_version = ">= 1.9.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.40"
    }
  }
}

# Proveedor de Azure. En azurerm 4.x el subscription_id es obligatorio.
provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}
