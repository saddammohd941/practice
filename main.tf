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