module "my_vm" {
    source = "./modules/vm"

    vm_name = "vm-from-child"
    machine_type = "e2-medium"
    zone = "us-central1-a"
}

module "my_bucket" {
    source = "./modules/bucket"

    project_id = "getteam"
    bucket_name = "bucket-frm-module"
}