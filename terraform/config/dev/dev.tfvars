config = {
  # AWS region and environment
  aws_region  = "us-east-1"
  environment = "dev"
  project     = "go-etherium"

  # VPC CIDR and Subnets
  network = {
    vpc_cidr              = "10.0.0.0/16"
  }

  eks = {
    instance_type = "t3.medium"
    min_size      = 1
    max_size      = 3
    desired_size  = 2
  }
}
