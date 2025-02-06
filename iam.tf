resource "aws_iam_role" "security_admin_role" {
  name = "SecurityAdminRole"
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Effect = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action = "sts:AssumeRole"
    }]
  })
}

resource "aws_iam_policy" "security_policy" {
  name        = "SecurityPolicy"
  description = "IAM policy for security enforcement"
  policy      = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect   = "Allow",
        Action   = ["s3:ListAllMyBuckets", "s3:GetBucketLocation"],
        Resource = "*"
      }
    ]
  })
}
