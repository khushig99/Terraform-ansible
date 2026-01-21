provider "google" {
  project = var.project_id
  region  = var.region
}
 
module "my_vm" {
  source        = "../../modules/vm"
  vm_name       = var.vm_name
  machine_type  = var.machine_type
  zone          = var.zone
}
 
module "my_bucket" {
  source        = "../../modules/bucket"
  bucket_name   = var.bucket_name
  location      = var.location
}