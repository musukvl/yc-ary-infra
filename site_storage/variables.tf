variable "name" {
  type = string
}

variable "yc_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "Zone for Yandex.Cloud resources"
}

variable "folder_id" {
  type        = string
  description = "Folder id where resources will be created"
}
