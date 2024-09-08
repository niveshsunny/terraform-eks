output "public_subnet_1_id" {
  value = aws_subnet.public_subnet_1.id
}

output "private_subnet_1_id" {
  value = aws_subnet.private_subnet_1.id
}

output "public_subnet_2_id" {
  value = aws_subnet.public_subnet_2.id
}

output "private_subnet_2_id" {
  value = aws_subnet.private_subnet_2.id
}

output "eks_cluster_name" {
  value = aws_eks_cluster.eks.name
}

output "eks_cluster_endpoint" {
  value = aws_eks_cluster.eks.endpoint
}

output "eks_cluster_version" {
  value = aws_eks_cluster.eks.version
}

output "eks_cluster_arn" {
  value = aws_eks_cluster.eks.arn
}

output "eks_node_group_name" {
  value = aws_eks_node_group.node-grp.node_group_name
}

output "eks_node_group_arn" {
  value = aws_eks_node_group.node-grp.arn
}

output "eks_node_group_instance_types" {
  value = aws_eks_node_group.node-grp.instance_types
}

output "eks_node_group_desired_size" {
  value = aws_eks_node_group.node-grp.scaling_config[0].desired_size
}

output "eks_node_group_max_size" {
  value = aws_eks_node_group.node-grp.scaling_config[0].max_size
}

output "eks_node_group_min_size" {
  value = aws_eks_node_group.node-grp.scaling_config[0].min_size
}
