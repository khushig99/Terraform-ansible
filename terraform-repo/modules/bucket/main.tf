resource "google_storage_bucket" "buck" {
    name = var.bucket_name
    location = var.location
    storage_class = var.storage_class

    uniform_bucket_level_access = true
    var.force_destroy = var.force_destroy

    versioning {
        enabled = var.versioning
    }

    labels = var.labels
}