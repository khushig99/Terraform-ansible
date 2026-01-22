resource "google_service_account" "sa" {
  account_id   = var.sa_name
  display_name = "Custom SA"
}
 
resource "google_project_iam_member" "sa_role_binding" {
  project = var.project_id
  role    = var.custom_role_name
  member  = "serviceAccount:${google_service_account.sa.email}"
}