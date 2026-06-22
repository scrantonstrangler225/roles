resource "aws_ses_domain_identity" "domain" {
  domain = var.domain
}

resource "aws_ses_email_identity" "noreply" {
  email = var.from_email
}
