variable "origin_domain_name" {
  description = "Domain name of the S3 bucket"
  type        = string
}

variable "origin_id" {
  description = "Unique identifier for the origin"
  type        = string
}

variable "price_class" {
  description = "Price class for the CloudFront distribution"
  type        = string
  default     = "PriceClass_100"
}

variable "aliases" {
  description = "List of domain names for the CloudFront distribution"
  type        = list(string)
  default     = []
}

variable "web_acl_id" {
  description = "ID of the WAF web ACL"
  type        = string
  default     = null
}

variable "tags" {
  description = "Tags to apply to the CloudFront distribution"
  type        = map(string)
  default     = {}
} 