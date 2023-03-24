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
//testing

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
