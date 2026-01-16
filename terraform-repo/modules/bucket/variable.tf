variable "project_id" {
    type = string
    default = "getteam"
}
variable "region" {
    type = string
    default = "us-central1"
}

variable "bucket_name" {
    type = string
}

variable "location" {
    type = string
    default = "US"
}

variable "storage_class" {
    type = string
    default = "STANDARD"
}

variable "versioning" {
    type = bool
    default = true
}

variable "force_destroy" {
    type = bool
    default = false
}

variable "labels" {
    type = map(string)
    default = {
        environment = "dev"
        managed_by = "terraform"
    }
}