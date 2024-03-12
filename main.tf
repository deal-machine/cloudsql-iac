resource "google_sql_database_instance" "postgres" {
  name                = var.instance_name
  region              = var.region
  project             = var.project_id
  database_version    = var.postgres_version
  deletion_protection = false

  settings {
    tier = var.machine_type
    ip_configuration {
      ipv4_enabled = true
      authorized_networks {
        name  = "allow-terraform"
        value = "0.0.0.0/0"
      }
    }
  }

  depends_on = [google_project_service.sqladmin, google_project_service.cloudresourcemanager]
}
resource "google_sql_database" "database" {
  project    = var.project_id
  name       = var.db_name
  charset    = "utf8"
  instance   = google_sql_database_instance.postgres.name
  depends_on = [google_sql_database_instance.postgres]
}
resource "google_sql_user" "user" {
  project    = var.project_id
  name       = var.db_username
  password   = var.db_pass
  instance   = google_sql_database_instance.postgres.name
  depends_on = [google_sql_database_instance.postgres]
}