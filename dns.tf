resource "yandex_dns_zone" "dns_zone" {
  name      = "uminoko-ru"
  zone      = "uminoko.ru."
  public    = true
  folder_id = yandex_resourcemanager_folder.site_folder.id
}
