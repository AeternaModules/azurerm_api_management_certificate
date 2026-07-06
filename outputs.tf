output "api_management_certificates" {
  description = "All api_management_certificate resources"
  value       = azurerm_api_management_certificate.api_management_certificates
  sensitive   = true
}
output "api_management_certificates_api_management_name" {
  description = "List of api_management_name values across all api_management_certificates"
  value       = [for k, v in azurerm_api_management_certificate.api_management_certificates : v.api_management_name]
}
output "api_management_certificates_data" {
  description = "List of data values across all api_management_certificates"
  value       = [for k, v in azurerm_api_management_certificate.api_management_certificates : v.data]
  sensitive   = true
}
output "api_management_certificates_expiration" {
  description = "List of expiration values across all api_management_certificates"
  value       = [for k, v in azurerm_api_management_certificate.api_management_certificates : v.expiration]
}
output "api_management_certificates_key_vault_identity_client_id" {
  description = "List of key_vault_identity_client_id values across all api_management_certificates"
  value       = [for k, v in azurerm_api_management_certificate.api_management_certificates : v.key_vault_identity_client_id]
}
output "api_management_certificates_key_vault_secret_id" {
  description = "List of key_vault_secret_id values across all api_management_certificates"
  value       = [for k, v in azurerm_api_management_certificate.api_management_certificates : v.key_vault_secret_id]
}
output "api_management_certificates_name" {
  description = "List of name values across all api_management_certificates"
  value       = [for k, v in azurerm_api_management_certificate.api_management_certificates : v.name]
}
output "api_management_certificates_password" {
  description = "List of password values across all api_management_certificates"
  value       = [for k, v in azurerm_api_management_certificate.api_management_certificates : v.password]
  sensitive   = true
}
output "api_management_certificates_resource_group_name" {
  description = "List of resource_group_name values across all api_management_certificates"
  value       = [for k, v in azurerm_api_management_certificate.api_management_certificates : v.resource_group_name]
}
output "api_management_certificates_subject" {
  description = "List of subject values across all api_management_certificates"
  value       = [for k, v in azurerm_api_management_certificate.api_management_certificates : v.subject]
}
output "api_management_certificates_thumbprint" {
  description = "List of thumbprint values across all api_management_certificates"
  value       = [for k, v in azurerm_api_management_certificate.api_management_certificates : v.thumbprint]
}

