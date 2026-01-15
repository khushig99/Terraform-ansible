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
#modules in terra, modules are already existing lines of code, that we can importing directlt, makes terraform files look cleaner, and no need of repeating the same code again and again.
#Terraform can load modules from multiple sources, including the local file system, a Terraform registry, and VCS repositories
#A module is a collection of resources that Terraform manages together. 
#When you repeatedly provision collections of resources with similar configuration, such as networking resources for new development environments, you should write reusable modules to codify them
#You can configure the root module to call child modules multiple times within the same configuration. The root module can also call a child module that calls its own nested child module.
#Terraform can download public module automatically if you specify the appropriate source and version in a module block
#Members of your organization may create modules specific to your infrastructure needs. HCP Terraform and Terraform Enterprise include a private module registry for sharing modules internally within your organization.
