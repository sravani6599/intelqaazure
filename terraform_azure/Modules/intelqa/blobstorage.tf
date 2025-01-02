
# Resource Group
resource "azurerm_resource_group" "intel_rg_demo" {
  name     = var.resource_group_name
  location = var.location
}




# Create Storage Account
resource "azurerm_storage_account" "storage" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.intel_rg_demo.name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

# Create App Service Plan
resource "azurerm_app_service_plan" "asp" {
  name                = var.app_service_plan_name
  location            = var.location
  resource_group_name = azurerm_resource_group.intel_rg_demo.name
  sku {
    tier = "Dynamic"
    size = "B1"
  }
}

