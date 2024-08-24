variable "branch_name" {
  type = string
  description = "The name of the Git branch to be used as a directory in GCS."
}

variable "gcs_bucket_location" {
  type = string
}

variable "bq_dataset_location" {
  type = string
}
