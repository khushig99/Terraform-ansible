terraform {
  backend "gcs" {
    bucket  = "tf-state-bucket"
    prefix  = "app-a/terraform.tfstate"
  }
}