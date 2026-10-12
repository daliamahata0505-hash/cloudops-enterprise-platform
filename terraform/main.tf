
terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Project     = "CloudOps-Enterprise-Platform"
      Environment = "Development"
      ManagedBy   = "Terraform"
    }
  }
}

# Read AWS account information without creating resources
data "aws_caller_identity" "current" {}

data "aws_region" "current" {}

# Read the existing CloudOps EC2 instance without creating or managing it
data "aws_instance" "cloudops" {
  instance_id = var.cloudops_instance_id
}
