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
      customer_certificate = list(object({
        key_vault_certificate_id = string
      }))
    })
  }))
  validation {
    condition = alltrue([
      for k, v in var.cdn_frontdoor_secrets : (
        length(v.secret.customer_certificate) >= 1
      )
    ])
    error_message = "Each customer_certificate list must contain at least 1 items"
  }
  # Note: 5 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

