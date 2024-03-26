resource "aws_eks_cluster" "tf_eks_cluster" {
    name = "tf_eks_cluster"
    role_arn = aws_iam_role.tf_eks_cluster.arn
  
  vpc_config {
    subnet_ids = [aws_subnet.tfsubnet1.id,aws_subnet.tfsubnet2.id]
  }

}
