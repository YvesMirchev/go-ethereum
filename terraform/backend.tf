terraform {
  required_version = "~> 1"
  backend "s3" {}
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5"
    }
  }
}

provider "aws" {
  region = var.config.aws_region

  default_tags {
    tags = {
      Environment = var.config.environment
      Project     = var.config.project
      ManagedBy   = "terraform"
    }
  }
}
