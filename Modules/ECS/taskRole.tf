resource "aws_iam_role" "iamTaskRole" {
  name = "${var.namePrefix}-${var.taskRoleName}"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = ""
        Principal = {
          Service = "ecs-tasks.amazonaws.com"
        }
      },
    ]
  })
}

resource "aws_iam_role_policy" "test_policy1" {
  name = "test_policy"
  role = aws_iam_role.iamTaskRole.id

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [  
      {
        Action = [
          "*",
        ]
        Effect   = "Allow"
        Resource = "*"
      },         
    ]
  })
}