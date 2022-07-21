provider "google" {
  project = "qwiklabs-gcp-01-2fae6cbf18f6"
  region = "us-central1"
}


resource "google_storage_bucket" "website" {
  
  name = "website"
  location = "EU"
  force_destroy = true
  uniform_bucket_level_access = true

}