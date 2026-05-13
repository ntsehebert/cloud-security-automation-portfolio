output "site_url" {
  description = "Temporary CloudFront site URL."
  value       = "https://${aws_cloudfront_distribution.website.domain_name}"
}

output "s3_bucket_name" {
  description = "S3 bucket used for website files."
  value       = aws_s3_bucket.website.id
}

output "cloudfront_distribution_id" {
  description = "CloudFront distribution ID."
  value       = aws_cloudfront_distribution.website.id
}

output "cloudfront_domain_name" {
  description = "CloudFront default domain."
  value       = aws_cloudfront_distribution.website.domain_name
}

output "custom_domain_url" {
  description = "Custom domain website URL."
  value       = "https://${local.root_domain}"
}

output "www_custom_domain_url" {
  description = "www custom domain website URL."
  value       = var.create_www_record ? "https://${local.www_domain}" : null
}

output "route53_zone_id" {
  description = "Route 53 hosted zone ID for the portfolio domain."
  value       = aws_route53_zone.primary.zone_id
}

output "route53_name_servers" {
  description = "Nameservers to configure at the domain registrar."
  value       = aws_route53_zone.primary.name_servers
}
