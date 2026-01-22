resource "googel_project_iam_custom_role" "custom_role" {
    role_id = var.role_id
    title = var.title
    description = var.description
    permissions = var.permissions
    project = var.project_id
}
