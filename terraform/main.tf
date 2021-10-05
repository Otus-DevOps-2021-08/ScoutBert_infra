terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
}

provider "yandex" {
  token     = "AQAAAAAzvwSSAATuwRx08NB7kUTHmsGbJBm1EgA"
  cloud_id  = "b1guaq33g795kseulbkb"
  folder_id = "b1gomfghlfgn96ee6hpl"
  zone      = "ru-central1-a"
}
resource "yandex_compute_instance" "app" {
  name = "reddit-app"
  metadata = {
  ssh-keys = "ubuntu:${file("~/.ssh/ubuntu.pub")}"
  }

  resources {
    cores  = 2
    memory = 2
  }
  boot_disk {
    initialize_params {
      # Указать id образа созданного в предыдущем домашем задании
      image_id = "fd80dmou2coj1e56hos5"
    }
  }
  network_interface {
    # Указан id подсети default-ru-central1-a
    subnet_id = "e9bvegsa6vvdst24ie0m"
    nat       = true
  }
  provisioner "file" {
  source = "files/puma.service"
  destination = "/tmp/puma.service"
}
}
