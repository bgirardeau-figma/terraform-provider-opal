resource "opal_resource" "sensitive_resource" {
  name = "Sensitive Resource"
  description = "A sensitive resource."
  resource_type = "CUSTOM"
  app_id = data.opal_app.my_custom_app.id
  admin_owner_id = data.opal_owner.security.id
  require_mfa_to_approve = true
  auto_approval = false
  require_manager_approval = true

  reviewer {
    id = opal_owner.security.id
  }
}
