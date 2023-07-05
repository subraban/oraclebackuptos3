provider "google" {
  credentials=file("creds.json")
  project     = "groovy-karma-388506"
  region      = "us-central1"
}
variable "files" {
  type = map(string)
  default = {
    # sourcefile = destfile
    "G:/LSCopy/DB2_20230621211500.trn" = "somefolder/DB2_20230621211500.trn",
    "G:/LSCopy/DB2_20230621210001.trn"  = "somefolder/DB2_20230621210001.trn"
  }
}
resource "google_storage_bucket" "my_bucket" {
  name     = "sqlservermedia345"
  location = "us-central1"
  storage_class = "STANDARD"
}

resource "google_storage_bucket_object" "my_object" {
  for_each = var.files
  name     = each.value
  source   = "${path.module}/${each.key}"
  bucket = google_storage_bucket.my_bucket.name
 
}
