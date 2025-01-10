
resource "aws_iam_user" "githubaction" {
  name = "githubaction"
}

resource "aws_iam_policy" "ec2_full_access" {
  name        = var.name
  description = "Provides full access to EC2"
  policy      = local.policy
}

resource "aws_iam_policy" "ecr_full_access" {
  name        = var.Container
  description = "Provides full access to ECR"
  policy      = local.ecr
}

resource "aws_iam_user_policy_attachment" "ec2_full_access_attachment" {
  user       = aws_iam_user.githubaction.name
  policy_arn = aws_iam_policy.ec2_full_access.arn
}

resource "aws_iam_user_policy_attachment" "ecr_full_access_attachment" {
  user       = aws_iam_user.githubaction.name
  policy_arn = aws_iam_policy.ecr_full_access.arn
}
output "aws_iam_user" {
  value = aws_iam_user.githubaction

}