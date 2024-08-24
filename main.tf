provider "google" {
  project = var.project_id
  region = "europe-central2"
}

resource "google_storage_bucket" "terraform_bucket" {
  name = "gitops-terraform-bucket-${var.branch_name}"
  location = "EU"
}

resource "google_bigquery_dataset" "terraform_dataset" {
  dataset_id = "terraform_dataset-${var.branch_name}"
  location = "EU"
}

terraform {
  backend "gcs" {
    bucket = "bucket-for-terraform-states"
    prefix = "env/${var.branch_name}"
  }
}
