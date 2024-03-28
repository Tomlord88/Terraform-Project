
resource "aws_ecr_repository" "terra_project" {
  name                 = "terra-project" # Name of the repository
  image_tag_mutability = "MUTABLE"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository_policy" "terra_project_policy" {
  repository = aws_ecr_repository.terra_project.name

  policy = jsonencode({
    Version = "2008-10-17",
    Statement = [
      {
        Sid = "AllowPushPull",
        Effect = "Allow",
        Principal = {
          AWS = "arn:aws:iam::767397734560:root" # Replace YOUR_AWS_ACCOUNT_ID with your actual AWS account ID
        },
        Action = [
          "ecr:GetDownloadUrlForLayer",
          "ecr:BatchGetImage",
          "ecr:BatchCheckLayerAvailability",
          "ecr:PutImage",
          "ecr:InitiateLayerUpload",
          "ecr:UploadLayerPart",
          "ecr:CompleteLayerUpload"
        ]
      }
    ]
  })
}