terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.27.0"
    }
  }
  # backend "azurerm" {
  #   resource_group_name  = "data_rg"
  #   storage_account_name = "sksgit"
  #   container_name       = "mandeeps"
  #   key                  = "mandeep.tfstate"

}


provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "mandeeps" {
  name     = "mandoas55d5"
  location = "East US"

}

resource "azurerm_storage_account" "mandeepstorage" {
  name                     = "storagemandeep"
  resource_group_name      = azurerm_resource_group.mandeeps.name
  location                 = azurerm_resource_group.mandeeps.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

}