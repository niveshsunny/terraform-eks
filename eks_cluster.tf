resource "aws_eks_cluster" "eks" {
  name     = "niveshsunny-eks"
  role_arn = aws_iam_role.master.arn


  vpc_config {
    subnet_ids = [aws_subnet.private_subnet_1,
                  aws_subnet.private_subnet_2,
                  aws_subnet.public_subnet_1,
                  aws_subnet.public_subnet_2]
  }

  depends_on = [
    aws_iam_role_policy_attachment.AmazonEKSClusterPolicy,
    aws_iam_role_policy_attachment.AmazonEKSServicePolicy,
    aws_iam_role_policy_attachment.AmazonEKSVPCResourceController
  ]

}