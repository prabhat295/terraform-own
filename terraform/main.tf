terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
  backend "s3" {
    bucket = "terraform-state-prabhat295"
    key    = "terraform.tfstate"
    region = "ap-south-1"
  }
}

provider "aws" {
  region = "ap-south-1"
}

locals {
  common_tags = {
    Environment = "Production"
    Project     = "React App"
    ManagedBy   = "Terraform"
  }
}

# S3 Module
module "s3" {
  source = "./modules/s3"

  bucket_name = "react-app-prabhat295"
  tags = {
    Environment = "Production"
    ManagedBy   = "Terraform"
    Project     = "React App"
  }
}

# CloudFront Module
module "cloudfront" {
  source = "./modules/cloudfront"

  origin_domain_name = module.s3.website_endpoint
  origin_id          = "S3-${module.s3.website_endpoint}"
  aliases           = []
  tags = {
    Environment = "Production"
    ManagedBy   = "Terraform"
    Project     = "React App"
  }
}

# CI/CD Module
module "cicd" {
  source = "./modules/cicd"

  project_name                  = "react-app"
  github_owner                  = "prabhat295"
  github_repo                   = "terraform-own"
  github_branch                 = "main"
  github_token                  = var.github_token
  s3_bucket_name                = module.s3.bucket_id
  artifact_bucket_name          = "react-app-artifacts-prabhat295"
  artifact_bucket_arn           = "arn:aws:s3:::react-app-artifacts-prabhat295"
  pipeline_name                 = "react-app-pipeline"
  artifact_store_location       = "react-app-artifacts-prabhat295"
  artifact_store_arn            = "arn:aws:s3:::react-app-artifacts-prabhat295"
  cloudfront_distribution_arn   = module.cloudfront.distribution_arn
}

output "cloudfront_url" {
  description = "The CloudFront distribution domain name for the deployed app"
  value       = module.cloudfront.distribution_domain_name
} 