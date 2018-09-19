resource "random_string" "deployment_variable" {
  length  = 10
  special = false
}

variable "api_name" {}

variable "api_description" {}

variable "stage_name" {
  default = "api"
}

variable "deployed_at" {
}

variable "root_path" {}