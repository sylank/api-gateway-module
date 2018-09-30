output "rest_api_id" {
  value = "${aws_api_gateway_rest_api.api.id}"
}

output "root_resource_id" {
  value = "${aws_api_gateway_resource.root_resource.id}"
}

output "stage_name" {
  value = "api"
}

output "root_path_part" {
  value = "${aws_api_gateway_resource.root_resource.path_part}"
}

output "api_gateway_execution_arn" {
  value = "${aws_api_gateway_rest_api.api.execution_arn}"
}
