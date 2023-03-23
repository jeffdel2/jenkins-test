terraform init

terraform {
  required_providers {
    auth0 = {
      source  = "auth0/auth0"
      version = "~> 0.45.0" # Refer to docs for latest version
    }
  }
}

provider "auth0" {}
