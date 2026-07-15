resource "namecheap_domain_records" "dns" {
  domain = var.domain

  #
  # SES Domain Verification
  #
  record {
    hostname = "_amazonses"
    type     = "TXT"
    address  = aws_ses_domain_identity.domain.verification_token
    ttl      = 300
  }

  #
  # Root SPF
  #
  record {
    hostname = "@"
    type     = "TXT"
    address  = "v=spf1 include:amazonses.com -all"
    ttl      = 300
  }

  #
  # DMARC
  #
  record {
    hostname = "_dmarc"
    type     = "TXT"
    address  = "v=DMARC1; p=none; rua=mailto:dmarc@${var.domain}; fo=1"
    ttl      = 300
  }

  #
  # Custom MAIL FROM MX
  #
  record {
    hostname = var.mail_from_subdomain
    type     = "MX"
    address  = "feedback-smtp.${var.aws_region}.amazonses.com"
    #address  = "10 feedback-smtp.${var.aws_region}.amazonses.com"
    ttl      = 300
  }

  #
  # Custom MAIL FROM SPF
  #
  record {
    hostname = var.mail_from_subdomain
    type     = "TXT"
    address  = "v=spf1 include:amazonses.com -all"
    ttl      = 300
  }

  #
  # DKIM (AWS generates three tokens)
  #
  dynamic "record" {
    for_each = aws_ses_domain_dkim.domain.dkim_tokens

    content {
      hostname = "${record.value}._domainkey"
      type     = "CNAME"
      address  = "${record.value}.dkim.amazonses.com"
      ttl      = 300
    }
  }
}
