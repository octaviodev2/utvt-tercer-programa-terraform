variable "subscription_id" {
  description = "The Azure subscription ID."
  type        = string
  default     = "GATO"
  sensitive   = true
}


variable "service_plan_sku_name" {
  type    = string
  default = "F1"
}

variable "application_type" {
  description = "Application type for the Azure Application Insights resource"
  type        = string
  default     = "web"
}

variable "node_version" {
  description = "Node.js version for the Azure Linux Web App"
  type        = string
  default     = "24-lts"
}

variable "log_analytics_sku" {
  description = "SKU del espacio de trabajo de Log Analytics"
  type        = string
  default     = "PerGB2018"
}


variable "web_app_name" {
  description = "Nombre de la aplicación web del entorno QA"
  type        = string
  default     = "app-utvt-integradora-web-qa-wus3-001"
}

variable "project" {
  description = "Nombre corto del proyecto, usado en nombres y etiquetas"
  type        = string
  default     = "utvt-integradora"
}

variable "environment" {
  description = "Entorno de despliegue"
  type        = string
  default     = "qa"

  validation {
    condition     = contains(["dev", "qa", "prod"], var.environment)
    error_message = "environment debe ser dev, qa o prod."
  }
}

variable "location" {
  description = "Región de Azure donde se despliegan los recursos"
  type        = string
  default     = "westus3"
}

variable "region_abbreviation" {
  description = "Abreviatura de la región para los nombres de recursos"
  type        = string
  default     = "wus3"
}

variable "instance" {
  description = "Número de instancia para los nombres de recursos"
  type        = string
  default     = "001"
}

variable "extra_tags" {
  description = "Etiquetas adicionales para todos los recursos"
  type        = map(string)
  default     = {}
}
