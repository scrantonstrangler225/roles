output "ses_domain_verification" {
  value = aws_ses_domain_identity.domain.verification_token
}
