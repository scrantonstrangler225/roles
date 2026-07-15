output "ses_domain_verification" {
  value = aws_ses_domain_identity.domain.verification_token
}

output "smtp_username" {
  value = aws_iam_access_key.smtp.id
}

output "smtp_secret" {
  sensitive = true
  value     = aws_iam_access_key.smtp.secret
}

output "verification_token" {
  value = aws_ses_domain_identity.domain.verification_token
}

output "dkim_tokens" {
  value = aws_ses_domain_dkim.domain.dkim_tokens
}

output "configuration_set" {
  value = aws_ses_configuration_set.default.name
}
