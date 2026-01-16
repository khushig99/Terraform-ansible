module "my_vm" {
    source = "git::https://github.com/khushig99/terraform-ansible.git//terraform-repo/modules/vm"

    vm_name = "vm-from-child"
    machine_type = "e2-medium"
    zone = "us-central1-a"
}


module "my_bucket" {
    source = "git::https://github.com/khushig99/terraform-ansible.git//terraform-repo/modules/bucket"
    project_id = "getteam"
    bucket_name = "bucket-frm-module"

}