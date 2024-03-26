resource "aws_eks_node_group" "example" {
  cluster_name    = aws_eks_cluster.tf_eks_cluster.name
  node_group_name = "my-eks-node-group"
  node_role_arn   = aws_iam_role.tf_eks_cluster.arn
  subnet_ids      = [aws_subnet.tfsubnet1.id, aws_subnet.tfsubnet2.id]

  scaling_config {
    desired_size = 2
    max_size     = 3
    min_size     = 1
  }

 
  instance_types = ["t3.micro"]
  ami_type       = "AL2_x86_64"


  labels = {
    Environment = "development"
  }
}
