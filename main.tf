# main.tf
resource "google_compute_instance" "default" {
  name         = "instance-20240904-032353"
  machine_type = "e2-micro"
  zone = "us-central1-c"

  boot_disk {
    initialize_params {
      image = "debian-12-bookworm-v20240815"
    }
  }

  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  tags = ["web"]
}

resource "google_storage_bucket" "bucket" {
  name          = "bucket-multcloud-3"
  location       = "US"
  force_destroy = true
}
