output "cdn_frontdoor_secrets" {
  description = "All cdn_frontdoor_secret resources"
  value       = azurerm_cdn_frontdoor_secret.cdn_frontdoor_secrets
}
output "cdn_frontdoor_secrets_cdn_frontdoor_profile_id" {
  description = "List of cdn_frontdoor_profile_id values across all cdn_frontdoor_secrets"
  value       = [for k, v in azurerm_cdn_frontdoor_secret.cdn_frontdoor_secrets : v.cdn_frontdoor_profile_id]
}
output "cdn_frontdoor_secrets_cdn_frontdoor_profile_name" {
  description = "List of cdn_frontdoor_profile_name values across all cdn_frontdoor_secrets"
  value       = [for k, v in azurerm_cdn_frontdoor_secret.cdn_frontdoor_secrets : v.cdn_frontdoor_profile_name]
}
output "cdn_frontdoor_secrets_name" {
  description = "List of name values across all cdn_frontdoor_secrets"
  value       = [for k, v in azurerm_cdn_frontdoor_secret.cdn_frontdoor_secrets : v.name]
}
output "cdn_frontdoor_secrets_secret" {
  description = "List of secret values across all cdn_frontdoor_secrets"
  value       = [for k, v in azurerm_cdn_frontdoor_secret.cdn_frontdoor_secrets : v.secret]
}

