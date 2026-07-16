output "api_management_certificates_id" {
  description = "Map of id values across all api_management_certificates, keyed the same as var.api_management_certificates"
  value       = { for k, v in azurerm_api_management_certificate.api_management_certificates : k => v.id if v.id != null && length(v.id) > 0 }
}
output "api_management_certificates_api_management_name" {
  description = "Map of api_management_name values across all api_management_certificates, keyed the same as var.api_management_certificates"
  value       = { for k, v in azurerm_api_management_certificate.api_management_certificates : k => v.api_management_name if v.api_management_name != null && length(v.api_management_name) > 0 }
}
output "api_management_certificates_data" {
  description = "Map of data values across all api_management_certificates, keyed the same as var.api_management_certificates"
  value       = { for k, v in azurerm_api_management_certificate.api_management_certificates : k => v.data if v.data != null && length(v.data) > 0 }
  sensitive   = true
}
output "api_management_certificates_expiration" {
  description = "Map of expiration values across all api_management_certificates, keyed the same as var.api_management_certificates"
  value       = { for k, v in azurerm_api_management_certificate.api_management_certificates : k => v.expiration if v.expiration != null && length(v.expiration) > 0 }
}
output "api_management_certificates_key_vault_identity_client_id" {
  description = "Map of key_vault_identity_client_id values across all api_management_certificates, keyed the same as var.api_management_certificates"
  value       = { for k, v in azurerm_api_management_certificate.api_management_certificates : k => v.key_vault_identity_client_id if v.key_vault_identity_client_id != null && length(v.key_vault_identity_client_id) > 0 }
}
output "api_management_certificates_key_vault_secret_id" {
  description = "Map of key_vault_secret_id values across all api_management_certificates, keyed the same as var.api_management_certificates"
  value       = { for k, v in azurerm_api_management_certificate.api_management_certificates : k => v.key_vault_secret_id if v.key_vault_secret_id != null && length(v.key_vault_secret_id) > 0 }
}
output "api_management_certificates_name" {
  description = "Map of name values across all api_management_certificates, keyed the same as var.api_management_certificates"
  value       = { for k, v in azurerm_api_management_certificate.api_management_certificates : k => v.name if v.name != null && length(v.name) > 0 }
}
output "api_management_certificates_password" {
  description = "Map of password values across all api_management_certificates, keyed the same as var.api_management_certificates"
  value       = { for k, v in azurerm_api_management_certificate.api_management_certificates : k => v.password if v.password != null && length(v.password) > 0 }
  sensitive   = true
}
output "api_management_certificates_resource_group_name" {
  description = "Map of resource_group_name values across all api_management_certificates, keyed the same as var.api_management_certificates"
  value       = { for k, v in azurerm_api_management_certificate.api_management_certificates : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "api_management_certificates_subject" {
  description = "Map of subject values across all api_management_certificates, keyed the same as var.api_management_certificates"
  value       = { for k, v in azurerm_api_management_certificate.api_management_certificates : k => v.subject if v.subject != null && length(v.subject) > 0 }
}
output "api_management_certificates_thumbprint" {
  description = "Map of thumbprint values across all api_management_certificates, keyed the same as var.api_management_certificates"
  value       = { for k, v in azurerm_api_management_certificate.api_management_certificates : k => v.thumbprint if v.thumbprint != null && length(v.thumbprint) > 0 }
}

