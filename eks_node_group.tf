resource "aws_eks_node_group" "eks_node_group" {
  cluster_name    = aws_eks_cluster.tf_eks_cluster.name
  node_group_name = "eks-node-group"
  node_role_arn   = aws_iam_role.eks_node_role.arn  
  subnet_ids      = [aws_subnet.tfsubnet1.id, aws_subnet.tfsubnet2.id]

  scaling_config {
    desired_size = 2
    max_size     = 3
    min_size     = 1
  }
}
