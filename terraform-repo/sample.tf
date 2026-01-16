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

#meta args(multiple resources)- i can use if i wanted to create/provision same resources multiple times. like from same module- creating 5 resources
#count- when same config. resources are needed, simple define value
#count - module "vm"{source = "./vm-module", count = 3} ->module.vm[0], module.vm[1], module.vm[2]
#for_each - (when diff. config of resources provision krne ho), based on keys
#for-each - module "vm" {source = "./vm-module", for_each {dev = "n1-standard-1, prod = "n1-standard-2"} machine_type = each.value} 
#to access -> module.vm["dev"], module.vm["prod"]

#input value specify(to specify variable value in module)- module-author-> specify value of variables present inside module
#for eg, inside module-> variable "servers" {type = number, description = "number of servers to create"}
#module ko servers naam ka input chaiye, -> user will define that, in root, when using module-> module "servers" {source = "./app-cluster" , servers = 3}
