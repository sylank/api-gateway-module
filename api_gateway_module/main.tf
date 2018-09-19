# API Gateway
resource "aws_api_gateway_rest_api" "api" {
  name        = "${var.api_name}"
  description = "${var.api_description}"
}

resource "aws_api_gateway_deployment" "deployment" {
  rest_api_id = "${aws_api_gateway_rest_api.api.id}"
  stage_name  = "${var.stage_name}"

  variables = {
    "deployed_at" = "${random_string.deployment_variable.result}"
  }
}

resource "aws_api_gateway_resource" "root_resource" {
  path_part   = "${var.root_path}"
  parent_id   = "${aws_api_gateway_rest_api.api.root_resource_id}"
  rest_api_id = "${aws_api_gateway_rest_api.api.id}"
}