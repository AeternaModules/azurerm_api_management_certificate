output "api_management_certificates_id" {
  description = "Map of id values across all api_management_certificates, keyed the same as var.api_management_certificates"
  value       = { for k, v in azurerm_api_management_certificate.api_management_certificates : k => v.id }
}
output "api_management_certificates_api_management_name" {
  description = "Map of api_management_name values across all api_management_certificates, keyed the same as var.api_management_certificates"
  value       = { for k, v in azurerm_api_management_certificate.api_management_certificates : k => v.api_management_name }
}
output "api_management_certificates_data" {
  description = "Map of data values across all api_management_certificates, keyed the same as var.api_management_certificates"
  value       = { for k, v in azurerm_api_management_certificate.api_management_certificates : k => v.data }
  sensitive   = true
}
output "api_management_certificates_expiration" {
  description = "Map of expiration values across all api_management_certificates, keyed the same as var.api_management_certificates"
  value       = { for k, v in azurerm_api_management_certificate.api_management_certificates : k => v.expiration }
}
output "api_management_certificates_key_vault_identity_client_id" {
  description = "Map of key_vault_identity_client_id values across all api_management_certificates, keyed the same as var.api_management_certificates"
  value       = { for k, v in azurerm_api_management_certificate.api_management_certificates : k => v.key_vault_identity_client_id }
}
output "api_management_certificates_key_vault_secret_id" {
  description = "Map of key_vault_secret_id values across all api_management_certificates, keyed the same as var.api_management_certificates"
  value       = { for k, v in azurerm_api_management_certificate.api_management_certificates : k => v.key_vault_secret_id }
}
output "api_management_certificates_name" {
  description = "Map of name values across all api_management_certificates, keyed the same as var.api_management_certificates"
  value       = { for k, v in azurerm_api_management_certificate.api_management_certificates : k => v.name }
}
output "api_management_certificates_password" {
  description = "Map of password values across all api_management_certificates, keyed the same as var.api_management_certificates"
  value       = { for k, v in azurerm_api_management_certificate.api_management_certificates : k => v.password }
  sensitive   = true
}
output "api_management_certificates_resource_group_name" {
  description = "Map of resource_group_name values across all api_management_certificates, keyed the same as var.api_management_certificates"
  value       = { for k, v in azurerm_api_management_certificate.api_management_certificates : k => v.resource_group_name }
}
output "api_management_certificates_subject" {
  description = "Map of subject values across all api_management_certificates, keyed the same as var.api_management_certificates"
  value       = { for k, v in azurerm_api_management_certificate.api_management_certificates : k => v.subject }
}
output "api_management_certificates_thumbprint" {
  description = "Map of thumbprint values across all api_management_certificates, keyed the same as var.api_management_certificates"
  value       = { for k, v in azurerm_api_management_certificate.api_management_certificates : k => v.thumbprint }
}

