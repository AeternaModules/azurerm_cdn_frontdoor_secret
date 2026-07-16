output "cdn_frontdoor_secrets_id" {
  description = "Map of id values across all cdn_frontdoor_secrets, keyed the same as var.cdn_frontdoor_secrets"
  value       = { for k, v in azurerm_cdn_frontdoor_secret.cdn_frontdoor_secrets : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cdn_frontdoor_secrets_cdn_frontdoor_profile_id" {
  description = "Map of cdn_frontdoor_profile_id values across all cdn_frontdoor_secrets, keyed the same as var.cdn_frontdoor_secrets"
  value       = { for k, v in azurerm_cdn_frontdoor_secret.cdn_frontdoor_secrets : k => v.cdn_frontdoor_profile_id if v.cdn_frontdoor_profile_id != null && length(v.cdn_frontdoor_profile_id) > 0 }
}
output "cdn_frontdoor_secrets_cdn_frontdoor_profile_name" {
  description = "Map of cdn_frontdoor_profile_name values across all cdn_frontdoor_secrets, keyed the same as var.cdn_frontdoor_secrets"
  value       = { for k, v in azurerm_cdn_frontdoor_secret.cdn_frontdoor_secrets : k => v.cdn_frontdoor_profile_name if v.cdn_frontdoor_profile_name != null && length(v.cdn_frontdoor_profile_name) > 0 }
}
output "cdn_frontdoor_secrets_name" {
  description = "Map of name values across all cdn_frontdoor_secrets, keyed the same as var.cdn_frontdoor_secrets"
  value       = { for k, v in azurerm_cdn_frontdoor_secret.cdn_frontdoor_secrets : k => v.name if v.name != null && length(v.name) > 0 }
}
output "cdn_frontdoor_secrets_secret" {
  description = "Map of secret values across all cdn_frontdoor_secrets, keyed the same as var.cdn_frontdoor_secrets"
  value       = { for k, v in azurerm_cdn_frontdoor_secret.cdn_frontdoor_secrets : k => v.secret if v.secret != null && length(v.secret) > 0 }
}

