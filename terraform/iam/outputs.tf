output "lambda_role_arn" {
  value = aws_iam_role.lambda_role.arn
}

output "dynamodb_policy_arn" {
  value = aws_iam_policy.dynamodb_access.arn
}

output "bedrock_dev_view_arn" {
  value = aws_iam_user.bedrock_dev_view.arn
}

output "alb_controller_role_arn" {
  value = aws_iam_role.alb_controller.arn
}