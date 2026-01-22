variable "project_id" {
    type = string
}
variable "role_id" {
    description = " id of custom role"
    type = string
}

variable "title" {
    description = "title of the custom role"
    type = string
}

variable "description" {
    description = "des of iam role"
    type = string
}

variable "permissions" {
    description = "list of permissions of custom role"
    type = list(string)
}
