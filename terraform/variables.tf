variable "aws_access_key" {
  description = "AWS access key"
  type        = string
  sensitive   = true
}

variable "aws_secret_key" {
  description = "AWS secret key"
  type        = string
  sensitive   = true
}

variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1"
}

variable "github_token" {
  description = "GitHub personal access token"
  type        = string
  sensitive   = true
}

variable "github_owner" {
  description = "GitHub repository owner"
  type        = string
  default     = "prabhat295"
}

variable "github_repo" {
  description = "GitHub repository name"
  type        = string
  default     = "terraform-own"
}

variable "github_branch" {
  description = "GitHub branch name"
  type        = string
  default     = "main"
} 