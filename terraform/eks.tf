module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 20.31"

  cluster_name    = "example"
  cluster_version = "1.31"

  cluster_endpoint_public_access = true

  enable_cluster_creator_admin_permissions = true

  eks_managed_node_groups = {
    example = {
      instance_types = [var.config.eks.instance_type]
      min_size       = var.config.eks.min_size
      max_size       = var.config.eks.max_size
      desired_size   = var.config.eks.desired_size
    }
  }

  vpc_id     = aws_vpc.main.id
  subnet_ids = aws_subnet.public_subnet.*.id

  tags = {
    Environment = var.config.environment
    Project     = var.config.project
  }
}
