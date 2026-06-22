resource "aws_cloudfront_distribution" "media_cdn" {

  origin {
    domain_name = "${var.bucket_name}.s3.amazonaws.com"
    origin_id   = "s3-${var.bucket_name}"

    dynamic "s3_origin_config" {
      for_each = var.enable_oac ? [] : [1]
      content {
        origin_access_identity = ""
      }
    }
  }

  enabled             = true
  default_root_object = ""

  default_cache_behavior {
    target_origin_id       = "s3-${var.bucket_name}"
    viewer_protocol_policy = "redirect-to-https"

    allowed_methods = ["GET", "HEAD"]
    cached_methods  = ["GET", "HEAD"]

    compress = true

    forwarded_values {
      query_string = false
      cookies {
        forward = "none"
      }
    }
  }

  price_class = "PriceClass_100"

  restrictions {
    geo_restriction {
      restriction_type = "none"
    }
  }

  viewer_certificate {
    cloudfront_default_certificate = true
  }
}
