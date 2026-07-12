resource "azurerm_cdn_frontdoor_secret" "cdn_frontdoor_secrets" {
  for_each = var.cdn_frontdoor_secrets

  cdn_frontdoor_profile_id = each.value.cdn_frontdoor_profile_id
  name                     = each.value.name

  secret {
    dynamic "customer_certificate" {
      for_each = each.value.secret.customer_certificate
      content {
        key_vault_certificate_id = customer_certificate.value.key_vault_certificate_id
      }
    }
  }
}

