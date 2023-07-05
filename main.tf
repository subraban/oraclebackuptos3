provider "google" {
  credentials=file("creds.json")
  project     = "groovy-karma-388506"
  region      = "us-central1"
}

resource "google_storage_bucket" "my_bucket" {
  name     = "sqlservermedia"
  location = "us-central1"
  storage_class = "STANDARD"
}

resource "google_storage_bucket_object" "my_object" {
  name   = "DB2_20230621210001.trn"
  bucket = google_storage_bucket.my_bucket.name
  source = "G:/LSCopy/DB2_20230621210001.trn"
}
