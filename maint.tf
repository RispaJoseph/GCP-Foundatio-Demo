# Set google provider with project name.
provider "google" {
  credentials = "${file("service-account.json")}"
  project = "gcp-foundation-341504" # Update: unique project id.
  region  = "europe-west2"
}

# Creates a GCS bucket.
resource "google_storage_bucket" "my_bucket" {
  name     = "gcp-foundation-bucket-2022" # Update: Unique bucket name
  location = "europe-west2"
}
