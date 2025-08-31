terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.41.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "Rg-Manish"
    storage_account_name = "manishstg1"
    container_name       = "manishcontainer"
    key                  = "Manish.tfstate"
  }
}


provider "azurerm" {
  features {}
  subscription_id = "177b7e12-5f03-4f63-bcd1-ed6d1d776bff"

}
resource "azurerm_resource_group" "Ganshiv" {
  name     = "rg-Ganshiv"
  location = "West Europe"
}


resource "azurerm_resource_group" "Ganshiv2" {
  name     = "rg-Ganshiv3"
  location = "West Europe"
}
resource "azurerm_storage_account" "ganshivstg" {
  name                     = "ganshhivstg1"
  resource_group_name      = azurerm_resource_group.Ganshiv.name
  location                 = azurerm_resource_group.Ganshiv.location
  account_tier             = "Standard"
  account_replication_type = "GRS"


}
resource "azurerm_storage_account" "ganshivstg2" {
  name                     = "ganshhivstg4"
  resource_group_name      = azurerm_resource_group.Ganshiv2.name
  location                 = azurerm_resource_group.Ganshiv2.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}


