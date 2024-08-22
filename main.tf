provider "google" {
  project = "fun-cloud-build-challenges"
  region = "europe-central2"
}

resource "google_storage_bucket" "terraform_bucket" {
  name = "terraform-bucket"
  location = "EU"
}

resource "google_bigquery_dataset" "terraform_dataset" {
  dataset_id = "terraform_dataset"
  location = "EU"
}
