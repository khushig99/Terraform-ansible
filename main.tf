resource "google_compute_instance" "vm" {
  name = "demo-vm-${local.env}"
  machine_type = local.machine_type_by_env{local.env}
  zone = var.zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
    }
  }
  
  network_interface {
    network = data.google_compute_network.default.name
    access_config {}
  }

  labels = local.common_labels

  lifecycle {
    prevent_destroy = false
  }
}

#data block for network - terraform  get exact resource reference,dependancy clear hoti hai, network = default is hardcoded
