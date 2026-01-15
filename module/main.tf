resource "google_compute_instance" "vm" {
    name = var.machine_name
    type = var.machine_type
    zone = var.region
}