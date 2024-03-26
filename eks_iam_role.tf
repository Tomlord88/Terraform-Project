resource "aws_iam_role" "tf_eks_cluster" {
  name = "tf-eks-cluster-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect = "Allow",
        Principal = {
          Service = "eks.amazonaws.com"
        },
        Action = "sts:AssumeRole"
      },
    ],
  })
}

resource "aws_iam_role_policy_attachment" "eks_cluster_policy" {
  role       = aws_iam_role.tf_eks_cluster.name  # Corrected to match the IAM role resource name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
}

resource "aws_iam_role_policy_attachment" "eks_service_policy" {
  role       = aws_iam_role.tf_eks_cluster.name  # Corrected to match the IAM role resource name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSServicePolicy"
}