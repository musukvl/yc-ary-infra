output "bucket_access_key" {
  value = yandex_iam_service_account_static_access_key.sa-static-key.access_key
}

output "bucket_secret_key" {
  value = yandex_iam_service_account_static_access_key.sa-static-key.secret_key
}

output "bucket" {
  value = yandex_storage_bucket.bucket.bucket
}