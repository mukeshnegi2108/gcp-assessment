provider "google" {
  project     = "elliptical-rite-387113"
  region      = "europe-west2"
  credentials = "./gcp-keys.json"
}

terraform {
  backend "gcs" {
    bucket = "personal-tfstate-bucket"
    prefix = "terraform/state"
  }
}
