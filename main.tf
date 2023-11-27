provider "aws" {
  access_key = "AKIAT2BQL2LSCI2YWW7K"
  secret_key = "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"
  region = "us-east-2"
}
resource "aws_iam_user" "Admin-user" {
  name = "lucky"
  tags = {
    description = "Tech Team Lead"
  }
}
resource "aws_iam_policy" "Admin-user" {
  name   = "AdminUsers"
  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "1234567890",
            "Effect": "Allow",
            "Action": "*",
            "Resource": "*"
        }
    ]
}
EOF
}
resource "aws_iam_user_policy_attachment" "lucky-admin-access" {
  user       = aws_iam_user.Admin-user.name
  policy_arn = aws_iam_policy.Admin-user.arn
}