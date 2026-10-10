# Tercer programa – Web App Node.js en Azure (QA)

Recursos: Resource Group, Log Analytics, Application Insights, App Service Plan (Linux F1) y Linux Web App (Node 24 LTS).

## Requisitos
- Terraform >= 1.9
- Azure CLI

## 1. Autenticación
```bash
az login
az account show --query id -o tsv   # copia este valor a subscription_id en terraform.tfvars
```

## 2. Registrar proveedores de recursos (solo la primera vez)
```bash
for ns in Microsoft.Web Microsoft.Insights Microsoft.OperationalInsights; do
  az provider register --namespace $ns --wait
done
```

## 3. Flujo de Terraform
```bash
terraform init
terraform fmt
terraform validate
terraform plan -out=tfplan
terraform apply tfplan
terraform output
terraform output -raw application_insights_connection_string
```

## 4. Eliminar la infraestructura
```bash
terraform destroy
```
