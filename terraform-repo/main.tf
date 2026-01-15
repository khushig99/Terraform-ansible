module "my_vm" {
    source = "./modules/vm"

    vm_name = "vm-from-child"
    machine_type = "e2-medium"
    zone = "us-central1-a"
}
