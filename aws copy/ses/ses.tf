# DOMAIN
resource "aws_ses_domain_identity" "domain" {
  domain = var.domain
}

# DKIM 
resource "aws_ses_domain_dkim" "domain" {
  domain = aws_ses_domain_identity.domain.domain
}

# MAIL FROM 
resource "aws_ses_domain_mail_from" "domain" {
  domain           = var.domain
  mail_from_domain = "${var.mail_from_subdomain}.${var.domain}"

  depends_on = [
    aws_ses_domain_identity.domain
  ]
}

# CONFIGURATION SET
resource "aws_ses_configuration_set" "default" {
  name = "production"
}
