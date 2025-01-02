variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "location" {
  description = "Azure region for the resources"
  type        = string
  default     = "East US"
}

variable "storage_account_name" {
  description = "Name of the storage account"
  type        = string
}
variable "subscription_id" {
  default = "489311d0-1d2f-45b2-a2d0-0cf9c09c85f6"
}
variable "tenant_id" {
    default = "7571a489-bd29-4f38-b9a6-7c880f8cddf0"
  
}

variable "app_service_plan_name" {
  description = "Name of the App Service Plan"
  type        = string
}

variable "function_app_name" {
  description = "Name of the Function App"
  type        = string
}

variable "runtime" {
  description = "Runtime for the Function App (e.g., node, python, dotnet)"
  type        = string
  default     = "node"
}

variable "always_on" {
  description = "Specifies if Always On should be enabled"
  type        = bool
  default     = true
}

variable "ftps_state" {
  description = "The FTPS state (Disabled, FtpsOnly, AllAllowed)"
  type        = string
  default     = "Disabled"
}

variable "minimum_tls_version" {
  description = "Minimum TLS version required"
  type        = string
  default     = "1.2"
}

variable "http2_enabled" {
  description = "Enables HTTP2 for the Function App"
  type        = bool
  default     = true
}

variable "additional_app_settings" {
  description = "Additional app settings for the Function App"
  type        = map(string)
  default     = {}
}
variable "workspace_name" {
  description = "Name of the Log Analytics Workspace"
  type        = string
}
variable "sku" {
  description = "SKU for the Log Analytics Workspace"
  type        = string
  default     = "PerGB2018"
}

variable "retention_in_days" {
  description = "Retention period for the Log Analytics Workspace"
  type        = number
  default     = 30
}
variable "action_group_name" {
  description = "Name of the Action Group"
  type        = string
}



variable "short_name" {
  description = "Short name for the Action Group"
  type        = string
}

variable "email_receiver_name" {
  description = "Name of the email receiver"
  type        = string
}

variable "email_receiver_address" {
  description = "Email address of the receiver"
  type        = string
}


variable "monitor_metric_alert"{
    description = "name of the monitor alert"
    type = string
}
