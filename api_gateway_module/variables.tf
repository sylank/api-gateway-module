variable "api_name" {}

variable "api_description" {}

variable "stage_name" {
  default = "api"
}

variable "deployed_at" {
}

variable "root_path" {}

variable "retention_in_days" {
  default = 7
}
