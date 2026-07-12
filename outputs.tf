output "cdn_frontdoor_secrets_cdn_frontdoor_profile_id" {
  description = "Map of cdn_frontdoor_profile_id values across all cdn_frontdoor_secrets, keyed the same as var.cdn_frontdoor_secrets"
  value       = { for k, v in azurerm_cdn_frontdoor_secret.cdn_frontdoor_secrets : k => v.cdn_frontdoor_profile_id }
}
output "cdn_frontdoor_secrets_cdn_frontdoor_profile_name" {
  description = "Map of cdn_frontdoor_profile_name values across all cdn_frontdoor_secrets, keyed the same as var.cdn_frontdoor_secrets"
  value       = { for k, v in azurerm_cdn_frontdoor_secret.cdn_frontdoor_secrets : k => v.cdn_frontdoor_profile_name }
}
output "cdn_frontdoor_secrets_name" {
  description = "Map of name values across all cdn_frontdoor_secrets, keyed the same as var.cdn_frontdoor_secrets"
  value       = { for k, v in azurerm_cdn_frontdoor_secret.cdn_frontdoor_secrets : k => v.name }
}
output "cdn_frontdoor_secrets_secret" {
  description = "Map of secret values across all cdn_frontdoor_secrets, keyed the same as var.cdn_frontdoor_secrets"
  value       = { for k, v in azurerm_cdn_frontdoor_secret.cdn_frontdoor_secrets : k => v.secret }
}

