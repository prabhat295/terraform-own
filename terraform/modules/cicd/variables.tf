variable "project_name" {
  description = "Name of the project"
  type        = string
}

variable "project_description" {
  description = "Description of the CodeBuild project"
  type        = string
  default     = "Build React application"
}

variable "build_timeout" {
  description = "Build timeout in minutes"
  type        = number
  default     = 10
}

variable "compute_type" {
  description = "Compute type for CodeBuild"
  type        = string
  default     = "BUILD_GENERAL1_SMALL"
}

variable "build_image" {
  description = "Docker image for CodeBuild"
  type        = string
  default     = "aws/codebuild/amazonlinux2-x86_64-standard:3.0"
}

variable "environment_variables" {
  description = "Environment variables for CodeBuild"
  type        = map(string)
  default     = {}
}

variable "buildspec_path" {
  description = "Path to the buildspec file"
  type        = string
  default     = "buildspec.yml"
}

variable "vpc_id" {
  description = "VPC ID for CodeBuild"
  type        = string
  default     = null
}

variable "subnet_ids" {
  description = "Subnet IDs for CodeBuild"
  type        = list(string)
  default     = []
}

variable "security_group_ids" {
  description = "Security group IDs for CodeBuild"
  type        = list(string)
  default     = []
}

variable "pipeline_name" {
  description = "Name of the CodePipeline"
  type        = string
}

variable "artifact_store_location" {
  description = "S3 bucket location for artifacts"
  type        = string
}

variable "artifact_store_arn" {
  description = "ARN of the S3 bucket for artifacts"
  type        = string
}

variable "cloudfront_distribution_arn" {
  description = "ARN of the CloudFront distribution"
  type        = string
}

variable "github_owner" {
  description = "GitHub repository owner"
  type        = string
}

variable "github_repo" {
  description = "GitHub repository name"
  type        = string
}

variable "github_branch" {
  description = "GitHub branch to use"
  type        = string
  default     = "main"
}

variable "github_token" {
  description = "GitHub personal access token"
  type        = string
  sensitive   = true
}

variable "s3_bucket_name" {
  description = "Name of the S3 bucket for the website"
  type        = string
}

variable "artifact_bucket_name" {
  description = "Name of the S3 bucket for artifacts"
  type        = string
}

variable "artifact_bucket_arn" {
  description = "ARN of the S3 bucket for artifacts"
  type        = string
}

variable "tags" {
  description = "Tags to apply to resources"
  type        = map(string)
  default     = {}
} 