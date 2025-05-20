# React Application with AWS Infrastructure

This project demonstrates the deployment of a React application using AWS services and Terraform for infrastructure as code.

## Architecture

- React application served through AWS CloudFront CDN
- Static files stored in S3 bucket
- CI/CD pipeline using AWS CodePipeline and CodeBuild
- Infrastructure managed with Terraform

## Prerequisites

- AWS Account with appropriate permissions
- Terraform installed
- Node.js and npm installed
- Git installed

## Setup Instructions

1. Clone the repository:
   ```bash
   git clone https://github.com/prabhat295/terraform-own.git
   cd terraform-own
   ```

2. Initialize Terraform:
   ```bash
   cd terraform
   terraform init
   ```

3. Apply Terraform configuration:
   ```bash
   terraform plan
   terraform apply
   ```

4. The infrastructure will be created, including:
   - S3 bucket for static hosting
   - CloudFront distribution
   - CodePipeline and CodeBuild resources

5. The React application will be automatically built and deployed when changes are pushed to the main branch.

## Project Structure

```
.
├── react-app/           # React application
├── terraform/          # Terraform configuration
│   ├── main.tf         # Main Terraform configuration
│   ├── variables.tf    # Variable definitions
│   ├── codepipeline.tf # CI/CD pipeline configuration
│   └── terraform.tfvars # Variable values
├── buildspec.yml       # AWS CodeBuild configuration
└── README.md          # Project documentation
```

## CI/CD Pipeline

The pipeline automatically:
1. Pulls code from GitHub
2. Builds the React application
3. Deploys to S3
4. Invalidates CloudFront cache

## Security Notes

- AWS credentials are stored in terraform.tfvars
- GitHub token is used for repository access
- S3 bucket is configured for public read access
- CloudFront distribution uses default SSL certificate

## Cleanup

To destroy the infrastructure:
```bash
cd terraform
terraform destroy
``` 