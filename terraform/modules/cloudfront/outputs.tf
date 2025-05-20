output "distribution_id" {
  description = "The identifier for the distribution"
  value       = aws_cloudfront_distribution.this.id
}

output "distribution_arn" {
  description = "The ARN for the distribution"
  value       = aws_cloudfront_distribution.this.arn
}

output "distribution_domain_name" {
  description = "The domain name of the distribution"
  value       = aws_cloudfront_distribution.this.domain_name
} 