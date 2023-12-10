resource "yandex_resourcemanager_folder" "site_folder" {
  name     = "ary-static-site-folder"
  cloud_id = data.yandex_resourcemanager_cloud.cloud.cloud_id
}

module "site_storage" {
  source    = "./site_storage"
  name      = "ary-uminoko-ru"
  folder_id = yandex_resourcemanager_folder.site_folder.id
}

# Upload index.html to storage
resource "yandex_storage_object" "indexfile" {
  access_key = module.site_storage.bucket_access_key
  secret_key = module.site_storage.bucket_secret_key


  bucket = module.site_storage.bucket
  key    = "index.html"
  source = "./index.html"
  tags = {
    test = "value"
  }
}

