output "resource_group_name" {
  description = "Nombre del grupo de recursos"
  value       = azurerm_resource_group.qa.name
}

output "log_analytics_workspace_id" {
  description = "ID del espacio de trabajo de Log Analytics"
  value       = azurerm_log_analytics_workspace.qa.id
}

output "application_insights_name" {
  description = "Nombre del recurso de Application Insights"
  value       = azurerm_application_insights.qa.name
}

output "application_insights_connection_string" {
  description = "Cadena de conexión de Application Insights"
  value       = azurerm_application_insights.qa.connection_string
  sensitive   = true
}

output "service_plan_id" {
  description = "ID del plan de App Service"
  value       = azurerm_service_plan.qa.id
}

output "web_app_name" {
  description = "Nombre de la aplicación web"
  value       = azurerm_linux_web_app.qa.name
}

output "web_app_url" {
  description = "URL pública de la aplicación web"
  value       = "https://${azurerm_linux_web_app.qa.default_hostname}"
}
