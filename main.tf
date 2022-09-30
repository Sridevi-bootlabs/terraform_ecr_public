resource "aws_ecrpublic_repository" "ecr_public" {
  repository_name = var.repository_name

  catalog_data {
    architectures     = var.architectures
    description       = var.description
    logo_image_blob   = var.logo_image_blob
    operating_systems = var.operating_systems
    usage_text        = var.usage_text
  }

  tags = {
    env = var.env
  }
}
resource "aws_ecrpublic_repository_policy" "public_policy" {
  repository_name = aws_ecrpublic_repository.ecr_public.repository_name

  policy = <<EOF
{
    "Version": "2008-10-17",
    "Statement": [
        {
            "Sid": "new policy",
            "Effect": "Allow",
            "Principal": "*",
            "Action": [
                "ecr:GetDownloadUrlForLayer",
                "ecr:BatchGetImage",
                "ecr:BatchCheckLayerAvailability",
                "ecr:PutImage",
                "ecr:InitiateLayerUpload",
                "ecr:UploadLayerPart",
                "ecr:CompleteLayerUpload",
                "ecr:DescribeRepositories",
                "ecr:GetRepositoryPolicy",
                "ecr:ListImages",
                "ecr:DeleteRepository",
                "ecr:BatchDeleteImage",
                "ecr:SetRepositoryPolicy",
                "ecr:DeleteRepositoryPolicy"
            ]
        }
    ]
}
EOF
}