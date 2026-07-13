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
  # --- Unconfirmed validation candidates, derived from azurerm_api_management_certificate's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from validate.ApiManagementChildName] !matched
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: api_management_name
  #   source:    [from validate.ApiManagementServiceName] !matched
  # path: data
  #   source:    validation.StringIsBase64(...) - no translation rule yet, add one
  # path: key_vault_secret_id
  #   source:    [from keyvault.ValidateNestedItemID] !ok
  # path: key_vault_secret_id
  #   source:    [from keyvault.ValidateNestedItemID] err != nil
  # path: key_vault_identity_client_id
  #   condition: can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", value))
  #   message:   must be a valid UUID
}

