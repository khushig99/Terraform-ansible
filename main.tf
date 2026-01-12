resource "google_compute_instance" "vm" {
  name = "demo-vm-${local.env}"
  machine_type = local.machine_type_by_env{local.env}
  zone = var.zone

  boot_disk {
    initalize_params {
      image = "debian-cloud/debian-12"
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }
  labels = local.common_labels
}


