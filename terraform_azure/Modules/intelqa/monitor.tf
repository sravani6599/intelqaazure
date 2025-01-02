resource "azurerm_monitor_action_group" "action_group" {
  name                = var.action_group_name
  resource_group_name = var.resource_group_name
  short_name          = var.short_name

  email_receiver {
    name                    = var.email_receiver_name
    email_address           = var.email_receiver_address
    use_common_alert_schema = true
  }
}

resource "azurerm_monitor_metric_alert" "monitor_alert" {
  name                = var.monitor_metric_alert
  resource_group_name = azurerm_resource_group.intel_rg_demo.name
  scopes              = [azurerm_storage_account.storage.id]
  description         = "Action will be triggered when Transactions count is greater than 50."

  criteria {
    metric_namespace = "Microsoft.Storage/storageAccounts"
    metric_name      = "Transactions"
    aggregation      = "Total"
    operator         = "GreaterThan"
    threshold        = 50

    dimension {
      name     = "ApiName"
      operator = "Include"
      values   = ["*"]
    }
  }

  action {
    action_group_id = azurerm_monitor_action_group.action_group.id
  }
}