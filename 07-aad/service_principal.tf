resource "random_password" "ad-sp-password" {
  length  = 32
  special = true
}

resource "azuread_application" "app" {
  display_name               = var.app_name
  available_to_other_tenants = false
}

resource "azuread_service_principal" "sp" {
  application_id = azuread_application.app.application_id
}

resource "azuread_service_principal_password" "sp_secret" {
  service_principal_id = azuread_service_principal.sp.id
  value                = random_password.ad-sp-password.result
  end_date_relative    = "17520h" #2y
}

resource "null_resource" "wait" {
  provisioner "local-exec" {
    command    = "sleep 30"
    on_failure = continue
  }

  depends_on = [azuread_service_principal_password.sp_secret]
}
