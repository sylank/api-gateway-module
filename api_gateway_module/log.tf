
resource "aws_cloudwatch_log_group" "gateway_logging" {
  name = "API-Gateway-Execution-Logs_${var.rest_api_id}/${var.stage_name}"

  retention_in_days = "${var.retention_in_days}"
}

