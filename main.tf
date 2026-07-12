data "azurerm_key_vault_secret" "data" {
  for_each     = { for k, v in var.api_management_certificates : k => v if v.data_key_vault_id != null && v.data_key_vault_secret_name != null }
  name         = each.value.data_key_vault_secret_name
  key_vault_id = each.value.data_key_vault_id
}
data "azurerm_key_vault_secret" "password" {
  for_each     = { for k, v in var.api_management_certificates : k => v if v.password_key_vault_id != null && v.password_key_vault_secret_name != null }
  name         = each.value.password_key_vault_secret_name
  key_vault_id = each.value.password_key_vault_id
}
resource "azurerm_api_management_certificate" "api_management_certificates" {
  for_each = var.api_management_certificates

  api_management_name          = each.value.api_management_name
  name                         = each.value.name
  resource_group_name          = each.value.resource_group_name
  data                         = each.value.data != null ? each.value.data : try(data.azurerm_key_vault_secret.data[each.key].value, null)
  key_vault_identity_client_id = each.value.key_vault_identity_client_id
  key_vault_secret_id          = each.value.key_vault_secret_id
  password                     = each.value.password != null ? each.value.password : try(data.azurerm_key_vault_secret.password[each.key].value, null)
}

