provider "google" {
  project = "anjani-portfolio" 
  region  = "us-central1"
}

resource "google_storage_bucket" "website_bucket" {
  name          = "anjaniportfolio-static-unique-12345"
  location      = "US"
  force_destroy = true

  website {
    main_page_suffix = "index.html"
    not_found_page   = "404.html"
  }
}

resource "google_storage_bucket_iam_member" "public_access" {
  bucket = google_storage_bucket.website_bucket.name
  role   = "roles/storage.objectViewer"
  member = "allUsers"
}
resource "google_compute_backend_bucket" "static_site" {
  name        = "anjaniportfoliobn"
  bucket_name = "www.anjaniportfolio.com"
  enable_cdn  = true
}
output "bucket_name" {
  value = google_storage_bucket.website_bucket.name
}

output "bucket_url" {
  value = "http://${google_storage_bucket.website_bucket.name}.storage.googleapis.com"
}
