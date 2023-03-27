terraform {
  required_providers {
    auth0 = {
      source  = "auth0/auth0"
      version = "~> 0.45.0" # Refer to docs for latest version
    }
  }
}

provider "auth0" {}

// Starting terraform configs

resource "auth0_client" "my_client" {
  name            = "WebAppExample"
  description     = "My Web App Created Through Terraform"
  app_type        = "regular_web"
  callbacks       = ["http://localhost:3000/callback"]
  oidc_conformant = true

  jwt_configuration {
    alg = "RS256"
  }
}

resource "auth0_organization" "my_organization" {
  name         = "terra-inc"
  display_name = "Terra v2 Incorporated"

  branding {
    logo_url = "https://icons-for-free.com/download-icon-Terraform-1329545833434920628_512.png"
    colors = {
      primary         = "#f2f2f2"
      page_background = "#e1e1e1"
    }
  }
}