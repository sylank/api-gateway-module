
resource "aws_cloudwatch_log_group" "gateway_logging" {
  name = "API-Gateway-Execution-Logs_${aws_api_gateway_rest_api.api.id}/${var.stage_name}"

  retention_in_days = "${var.retention_in_days}"
}

