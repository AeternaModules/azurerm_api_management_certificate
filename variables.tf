variable "api_management_certificates" {
  description = <<EOT
Map of api_management_certificates, attributes below
Required:
    - api_management_name
    - name
    - resource_group_name
Optional:
    - data
    - data_key_vault_id (alternative to data - read from Key Vault instead)
    - data_key_vault_secret_name (alternative to data - read from Key Vault instead)
    - key_vault_identity_client_id
    - key_vault_secret_id
    - password
    - password_key_vault_id (alternative to password - read from Key Vault instead)
    - password_key_vault_secret_name (alternative to password - read from Key Vault instead)
EOT

  type = map(object({
    api_management_name            = string
    name                           = string
    resource_group_name            = string
    data                           = optional(string)
    data_key_vault_id              = optional(string)
    data_key_vault_secret_name     = optional(string)
    key_vault_identity_client_id   = optional(string)
    key_vault_secret_id            = optional(string)
    password                       = optional(string)
    password_key_vault_id          = optional(string)
    password_key_vault_secret_name = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.api_management_certificates : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.api_management_certificates : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.api_management_certificates : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.api_management_certificates : (
        v.data == null || (can(base64decode(v.data)))
      )
    ])
    error_message = "must be valid base64"
  }
  validation {
    condition = alltrue([
      for k, v in var.api_management_certificates : (
        v.key_vault_identity_client_id == null || (can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.key_vault_identity_client_id)))
      )
    ])
    error_message = "must be a valid UUID"
  }
  # Note: 5 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

