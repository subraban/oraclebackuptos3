provider "google" {
  credentials = file("<path-to-your-credentials-file>")
  project     = "groovy-karma-388506"
  region      = "us-central1"
}

resource "google_storage_bucket" "my_bucket" {
  name     = "sqlservermedia"
}

resource "google_storage_bucket_object" "my_object" {
  name   = "DB2_20230621210001.trn"
  bucket = google_storage_bucket.my_bucket.name
  source = "G:/LSCopy"
}
