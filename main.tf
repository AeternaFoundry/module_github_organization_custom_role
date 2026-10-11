resource "github_organization_custom_role" "organization_custom_roles" {
  for_each = var.organization_custom_roles

  base_role   = each.value.base_role
  name        = each.value.name
  permissions = each.value.permissions
  description = each.value.description
}

