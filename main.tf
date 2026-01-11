resource "azurerm_cdn_frontdoor_secret" "cdn_frontdoor_secrets" {
  for_each = var.cdn_frontdoor_secrets

  cdn_frontdoor_profile_id = each.value.cdn_frontdoor_profile_id
  name                     = each.value.name

  secret {
    customer_certificate {
      key_vault_certificate_id = each.value.secret.customer_certificate.key_vault_certificate_id
    }
  }
}

