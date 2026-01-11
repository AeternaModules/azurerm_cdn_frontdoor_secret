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
}

