resource "aws_cloudwatch_log_group" "lambda_logs" {

  name = "/aws/lambda/bedrock-asset-processor"

  retention_in_days = 30
}