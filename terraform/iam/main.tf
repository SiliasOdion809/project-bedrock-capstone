resource "aws_iam_role" "lambda_role" {
  name = "bedrock-asset-processor-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"

    Statement = [
      {
        Effect = "Allow"

        Principal = {
          Service = "lambda.amazonaws.com"
        }

        Action = "sts:AssumeRole"
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "lambda_basic" {
  role = aws_iam_role.lambda_role.name

  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
}

resource "aws_iam_user" "bedrock_dev_view" {
  name = "bedrock-dev-view"
}

resource "aws_iam_user_policy_attachment" "readonly" {
  user = aws_iam_user.bedrock_dev_view.name

  policy_arn = "arn:aws:iam::aws:policy/ReadOnlyAccess"
}