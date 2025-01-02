
resource "azurerm_log_analytics_workspace" "log_workspace" {
  name                = var.workspace_name
  resource_group_name        = azurerm_resource_group.intel_rg_demo.name
  location                   = azurerm_resource_group.intel_rg_demo.location
  sku                 = var.sku
  retention_in_days   = var.retention_in_days
}


