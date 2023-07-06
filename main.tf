provider "google" {
  credentials=file("creds.json")
  project     = "groovy-karma-388506"
  region      = "us-central1"
}

resource "google_storage_bucket" "my_bucket" {
  name     = "asdasdasd"
  location = "us-central1"
  storage_class = "STANDARD"
}

resource "google_storage_bucket_object" "my_object1" {
  name   = var.file1
  bucket = google_storage_bucket.my_bucket.name
  source = var.s1
}

resource "google_storage_bucket_object" "my_object2" {
  name   = var.file2
  bucket = google_storage_bucket.my_bucket.name
  source = var.s2
}
resource "google_storage_bucket_object" "my_object3" {
  name   = var.file3
  bucket = google_storage_bucket.my_bucket.name
  source = var.s3
}
resource "google_storage_bucket_object" "my_object4" {
  name   = var.file4
  bucket = google_storage_bucket.my_bucket.name
  source = var.s4
}
