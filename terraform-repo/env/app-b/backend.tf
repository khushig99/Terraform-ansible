terraform {
  backend "gcs" {
    bucket  = "tf-state-bucket"
    prefix  = "app-b/terraform.tfstate"
  }
}