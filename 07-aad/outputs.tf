output "application_id" {
  value       = azuread_application.app.application_id
  description = "Azure AD application id"
}

output "application_object_id" {
  value       = azuread_application.app.object_id
  description = "Azure AD application object id"
}

output "service_principal_name" {
  value       = azuread_service_principal.sp.display_name
  description = "Service Principal display name"
}

output "service_principal_id" {
  value       = azuread_service_principal.sp.id
  description = "Service Principal unique ID"
}

output "service_principal_secret" {
  value       = random_password.ad-sp-password.result
  description = "Azure AD Service Principal secret"
}