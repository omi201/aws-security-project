resource "aws_sns_topic" "security_alerts" {
  name = "security-alerts-topic"
}

resource "aws_lambda_function" "auto_remediation" {
  filename         = "lambda.zip"
  function_name    = "SecurityAutoRemediation"
  role             = aws_iam_role.security_admin_role.arn
  handler          = "lambda_function.lambda_handler"
  runtime         = "python3.8"
}
