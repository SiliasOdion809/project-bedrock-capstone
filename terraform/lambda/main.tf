resource "aws_lambda_function" "asset_processor" {

  function_name = "bedrock-asset-processor"

  filename = "../lambda/src/function.zip"

  source_code_hash = filebase64sha256(
    "../lambda/src/function.zip"
  )

  role = var.lambda_role_arn

  handler = "lambda_function.lambda_handler"

  runtime = "python3.12"

  tags = {
    Project = "karatu-2025-capstone"
  }
}

resource "aws_lambda_permission" "allow_s3" {

  statement_id = "s3-trigger"

  action = "lambda:InvokeFunction"

  function_name = aws_lambda_function.asset_processor.function_name

  principal = "s3.amazonaws.com"

  source_arn = var.bucket_arn
}

resource "aws_s3_bucket_notification" "trigger" {

  bucket = var.bucket_name

  lambda_function {

    lambda_function_arn = aws_lambda_function.asset_processor.arn

    events = [
      "s3:ObjectCreated:*"
    ]
  }

  depends_on = [
    aws_lambda_permission.allow_s3
  ]
}

