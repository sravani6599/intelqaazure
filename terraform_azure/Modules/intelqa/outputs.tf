output "function_app_id" {
  description = "ID of the Function App"
  value       = azurerm_linux_function_app.function_app.id
}

#output "log_analytics_workspace_id" {
 # value = module.intelqa.log_analytics_workspace_id
#}
