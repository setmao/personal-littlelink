terraform {
  backend "gcs" {
    bucket = "semo-terraform-state"
    prefix = "littlelink-bucket-state"
  }
}

provider "google" {
  region = var.region
}

resource "google_storage_bucket" "littlelink" {
  name                        = var.littlelink_bucket
  project                     = var.project
  location                    = var.bucket_location
  storage_class               = "STANDARD"
  force_destroy               = true
  uniform_bucket_level_access = false
  website {
    main_page_suffix = "src/index.html"
  }
}

resource "google_storage_default_object_access_control" "littlelink_public_read" {
  bucket = google_storage_bucket.littlelink.name
  role   = "READER"
  entity = "allUsers"
}
