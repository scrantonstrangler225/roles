output "cloudfront_domain" {
  value = aws_cloudfront_distribution.media_cdn.domain_name
}
