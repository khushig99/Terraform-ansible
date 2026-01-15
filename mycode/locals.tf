locals {
    project_id = var.project_id 
    env = var.env

    common_labels = {
        environment = local.env
        owner= "khushi"
        managed_by = "terraform"
    }
    machine_type_by_env = {
        dev = "e2-medium"
        prod = "e2-standard-4"
    }
}
#common_labels- reuse resoures, machine_type_by_env - logic witout if/else, env - single switch control