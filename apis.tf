resource "google_project_service" "sqladmin" {
  project                    = var.project_id
  service                    = "sqladmin.googleapis.com"
  disable_dependent_services = true
}
resource "google_project_service" "cloudresourcemanager" {
  project                    = var.project_id
  service                    = "cloudresourcemanager.googleapis.com"
  disable_dependent_services = true
}