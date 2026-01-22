variable "project_id" {
    type = string
}

variable "role_id" {
    type = string
}

variable "role_title" {
    type = string
}

variable "role_description" {
    type = string
}

variable "permissions" {
    type = list(string)
}

variable "sa_name" {
    type = string
}

variable "environment" {
    type = string
}