provider "google" {
  credentials=file("creds.json")
  project     = "groovy-karma-388506"
  region      = "us-central1"
}

resource "google_storage_bucket" "my_bucket" {
  name     = "sasjkneqwlkmads"
  location = "us-central1"
  storage_class = "STANDARD"
}

resource "google_storage_bucket_object" "my_object" {
  for_each = var.files
  name     = each.value
  source   = "${path.module}/${each.key}"
  bucket = google_storage_bucket.my_bucket.name
 
}
