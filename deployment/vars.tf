variable "project" {
  type = string
  description = "GCP project"
}

variable "littlelink_bucket" {
  type = string
  description = "store littlelink source code bucket"
}

variable "region" {
  type = string
  description = "project region"
}

variable "bucket_location" {
  type = string
  description = "bucket location"
}

variable "gcs_editor" {
  type = list(string)
  description = "GCS editor"
}
