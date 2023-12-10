
resource "yandex_storage_bucket" "bucket" {
  access_key = yandex_iam_service_account_static_access_key.sa-static-key.access_key
  secret_key = yandex_iam_service_account_static_access_key.sa-static-key.secret_key


  bucket = "${var.name}-bucket"
  acl    = "public-read"

  max_size = 1024 * 1024 * 1024 * 1 // 1 GB   
  /*
  cors_rule {
    allowed_headers = ["*"]
    allowed_methods = ["PUT", "POST", "GET", "OPTIONS", "DELETE"]
    allowed_origins = ["*"]
    max_age_seconds = 3600
  }
*/
  website {
    index_document = "index.html"
    error_document = "404.html"
  }
}

