locals {
  # This makes the bucket name unique to your project
  data_lake_bucket = "ny_taxi_rides_data_lake"
}

variable "project" {
  description = "Your GCP project ID"
  type        = string
}

variable "region" {
  description = "Region for GCP resources"
  type        = string
  default     = "us-east5" # Optimized for Bloomington, Indiana
}

variable "storage_class" {
  description = "Storage class type for your bucket"
  default     = "STANDARD"
}

variable "BQ_DATASET" {
  description = "BigQuery Dataset name"
  type        = string
}

variable "gcs_bucket_name" {
  description = "Base name for GCS bucket"
  type        = string
}