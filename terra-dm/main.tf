module "custom_role" {
  source      = "./modules/iam-custom-role"
  project_id  = var.project_id
  role_id     = var.role_id
  title       = var.role_title
  description = var.role_description
  permissions = var.permissions
}
 
module "service_account" {
  source            = "./modules/service-account"
  project_id        = var.project_id
  sa_name           = var.sa_name
  custom_role_name  = module.custom_role.custom_role_name
}
 