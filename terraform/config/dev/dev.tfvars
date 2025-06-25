config = {
  # AWS region and environment
  aws_region  = "us-east-1"
  environment = "dev"
  project     = "go-etherium"

  # VPC CIDR and Subnets
  network = {
    vpc_cidr              = "10.0.0.0/16"
    public_subnet_cidrs   = ["10.0.1.0/24", "10.0.2.0/24"]
    private_subnet_cidrs  = ["10.0.3.0/24", "10.0.4.0/24"]
    database_subnet_cidrs = ["10.0.5.0/24", "10.0.6.0/24"]
  }

  mysql = {
    # Database settings
    db_name = "wordpress"
  }

  eks = {
    instance_type = "t3.medium"
    min_size      = 1
    max_size      = 3
    desired_size  = 2
  }

  wordpress_app = {
    # WordPress application settings
    site_url    = "http://staticwebsiteivom.site"
    admin_user  = "admin"
    admin_pass  = "admin_password"
    admin_email = ""
  }
}
