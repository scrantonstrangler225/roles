
# -----------------------------------------------
# Identity Providers
# (linkedIn, google, wechat, grab) 
# -----------------------------------------------

variable "google_client_id" {
  description = "Google OAuth client ID"
  type        = string
  sensitive   = true
  default     = ""
}

variable "google_client_secret" {
  description = "Google OAuth client secret"
  type        = string
  sensitive   = true
  default     = ""
}

variable "linkedin_client_id" {
  description = "LinkedIn OAuth client ID"
  type        = string
  sensitive   = true
  default     = ""
}

variable "linkedin_client_secret" {
  description = "LinkedIn OAuth client secret"
  type        = string
  sensitive   = true
  default     = ""
}

# -----------------------------------------------
# Google OIDC
# -----------------------------------------------

resource "keycloak_oidc_google_identity_provider" "google" {
  count = var.google_client_id != "" && var.google_client_secret != "" ? 1 : 0

  realm         = keycloak_realm.main.id
  alias         = "google"
  display_name  = "Continue with Google"

  client_id     = var.google_client_id
  client_secret = var.google_client_secret

  enabled       = true
  trust_email   = false
  store_token   = false
  sync_mode     = "IMPORT"

  default_scopes = "openid profile email"
}

# -----------------------------------------------
# LinkedIn OIDC
# -----------------------------------------------

resource "keycloak_oidc_identity_provider" "linkedin" {
  count = var.linkedin_client_id != "" && var.linkedin_client_secret != "" ? 1 : 0

  realm         = keycloak_realm.main.id
  alias         = "linkedin"
  display_name  = "Continue with LinkedIn"

  provider_id   = "oidc"
  client_id     = var.linkedin_client_id
  client_secret = var.linkedin_client_secret

  authorization_url = "https://www.linkedin.com/oauth/v2/authorization"
  token_url         = "https://www.linkedin.com/oauth/v2/accessToken"
  user_info_url     = "https://api.linkedin.com/v2/userinfo"
  jwks_url          = "https://www.linkedin.com/oauth/openid/jwks"
  issuer            = "https://www.linkedin.com"

  enabled        = true
  trust_email    = false
  store_token    = false
  sync_mode      = "IMPORT"

  default_scopes = "openid profile email"

  extra_config = {
    clientAuthMethod = "client_secret_post"
  }
}

