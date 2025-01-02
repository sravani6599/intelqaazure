

provider "azurerm" {
  features {}
 subscription_id = var.subscription_id
 # client_id       = "your_client_id"
  #client_secret   = "your_client_secret"
  tenant_id       = var.tenant_id
 # location = "your location"
}
module "intelqa"{
   source = "../Modules/intelqa"
  resource_group_name     = "intelqa-rg-azure"
  action_group_name          = "monitor-action-group-intelqa"
  short_name                 = "monitorgroup"
  email_receiver_name        = "email_receiver"
  email_receiver_address     = "devops7997@gmail.com"
  monitor_metric_alert = "intelqamonitor"
  workspace_name      = "intelqaworkspace"
   sku                 = "PerGB2018"
  retention_in_days   = 30
  location                = var.location
  storage_account_name    = "storagefunctionapp123"
  app_service_plan_name    = "asp-intelqayes-demo"
  function_app_name       = "intelqa-demo"
  runtime                 = "python"
  always_on               = true
  ftps_state              = "Disabled"
  minimum_tls_version     = "1.2"
  http2_enabled           = true
  additional_app_settings = {
  CUSTOM_ENV_VAR = "custom_value"
   

  }
}
