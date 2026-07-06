variable "cdn_frontdoor_secrets" {
  description = <<EOT
Map of cdn_frontdoor_secrets, attributes below
Required:
    - cdn_frontdoor_profile_id
    - name
    - secret (block):
        - customer_certificate (required, block):
            - key_vault_certificate_id (required)
EOT

  type = map(object({
    cdn_frontdoor_profile_id = string
    name                     = string
    secret = object({
      customer_certificate = object({
        key_vault_certificate_id = string
      })
    })
  }))
  # --- Unconfirmed validation candidates, derived from azurerm_cdn_frontdoor_secret's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    validate.CdnFrontDoorSecretName: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: cdn_frontdoor_profile_id
  #   source:    [from validate.FrontDoorProfileID] !ok
  # path: cdn_frontdoor_profile_id
  #   source:    [from validate.FrontDoorProfileID] err != nil
  # path: secret.customer_certificate.key_vault_certificate_id
  #   source:    [from keyvault.ValidateNestedItemID] !ok
  # path: secret.customer_certificate.key_vault_certificate_id
  #   source:    [from keyvault.ValidateNestedItemID] err != nil
}

