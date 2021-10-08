variable "cloud_id" {
  description = "Cloud"
}
variable "folder_id" {
  description = "Folder"
}
variable "zone" {
  description = "Zone"
  # Значение по умолчанию
  default = "ru-central1-a"
}
variable "public_key_path" {
  # Описание переменной
  description = "Path to the public key used for ssh access"
}
variable private_key_path {
  description = "Path to the private key used for ssh access"
}
variable "reddit-app-base" {
  description = "Disk image"
}
variable "service_account_key_file" {
  description = "key.json"
}
variable "external_app_port" {
  default = 8080
}
variable "internal_app_port" {
  default = 9292
}
variable "app_instances_count" {
  default = 1
}
variable db_disk_image {
  description = "Disk image for reddit db"
  default = "reddit-db-base"
}
variable app_disk_image {
  description = "Disk image for reddit app"
  default = "reddit-app-base"
}
variable subnet_id {
  description = "Subnets for modules"
}
