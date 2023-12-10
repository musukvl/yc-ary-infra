
resource "yandex_lockbox_secret" "storage_secret" {
  name      = "storage-secrets"
  folder_id = yandex_resourcemanager_folder.site_folder.id
}

resource "yandex_lockbox_secret_version" "storage_secret_version" {
  secret_id = yandex_lockbox_secret.storage_secret.id
  entries {
    key        = "access_key"
    text_value = module.site_storage.bucket_access_key
  }
  entries {
    key        = "secret_key"
    text_value = module.site_storage.bucket_secret_key
  }
}