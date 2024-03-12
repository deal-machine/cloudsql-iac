variable "project_id" {}
variable "credentials" {}
variable "zone" {}
variable "region" {}
variable "instance_name" {}
variable "postgres_version" {
  default = "POSTGRES_14"
}
variable "machine_type" {
  default = "db-f1-micro"
}
variable "db_name" {}
variable "db_username" {}
variable "db_pass" {}