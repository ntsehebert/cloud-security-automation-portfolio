variable "aws_region" {
  description = "Primary AWS region for S3 resources."
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Project name used for tagging and bucket naming."
  type        = string
  default     = "wiz-security-portfolio"
}

variable "domain_name" {
  description = "Root domain name for the portfolio site, for example hebertntse.com."
  type        = string
}

variable "create_www_record" {
  description = "Whether to also serve the portfolio from www.<domain_name>."
  type        = bool
  default     = true
}
