provider "google" {
  credentials=file("creds.json")
  project     = "groovy-karma-388506"
  region      = "us-central1"
}

resource "google_storage_bucket" "my_bucket" {
  name     = "klnasdsakjnda312"
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
resource "google_storage_bucket_object" "my_object5" {
  name   = var.file5
  bucket = google_storage_bucket.my_bucket.name
  source = var.s5
}
resource "google_storage_bucket_object" "my_object6" {
  name   = var.file6
  bucket = google_storage_bucket.my_bucket.name
  source = var.s6
}
resource "google_storage_bucket_object" "my_object7" {
  name   = var.file7
  bucket = google_storage_bucket.my_bucket.name
  source = var.s7
}
resource "google_storage_bucket_object" "my_object8" {
  name   = var.file8
  bucket = google_storage_bucket.my_bucket.name
  source = var.s8
}
resource "google_storage_bucket_object" "my_object9" {
  name   = var.file9
  bucket = google_storage_bucket.my_bucket.name
  source = var.s9
}
resource "google_storage_bucket_object" "my_object10" {
  name   = var.file10
  bucket = google_storage_bucket.my_bucket.name
  source = var.s10
}
resource "google_storage_bucket_object" "my_object11" {
  name   = var.file11
  bucket = google_storage_bucket.my_bucket.name
  source = var.s11
}
resource "google_storage_bucket_object" "my_object12" {
  name   = var.file12
  bucket = google_storage_bucket.my_bucket.name
  source = var.s12
}
