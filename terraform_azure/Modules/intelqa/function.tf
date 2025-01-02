# Provider Configuration
provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}
# Function App
resource "azurerm_linux_function_app" "function_app" {
  name                       = var.function_app_name
  resource_group_name        = azurerm_resource_group.intel_rg_demo.name
  location                   = azurerm_resource_group.intel_rg_demo.location
  storage_account_name       = var.storage_account_name
  storage_account_access_key = azurerm_storage_account.storage.primary_access_key
  service_plan_id            = azurerm_app_service_plan.asp.id

  app_settings = {
    FUNCTIONS_WORKER_RUNTIME = "node" # Change to "dotnet", "python", etc. if needed.
    WEBSITE_RUN_FROM_PACKAGE = "1"
  }

  site_config {
    always_on           = var.always_on
    ftps_state          = var.ftps_state
    minimum_tls_version = var.minimum_tls_version
    http2_enabled       = var.http2_enabled
  }
}
