# Okta CIC Terraform sample

This sample project is based on the [Auth0 Terraform provider](https://github.com/auth0/terraform-provider-auth0).

## Baseline Config

```
provider "auth0" {
  domain        = "<domain>"
  client_id     = "<client-id>"
  client_secret = "<client-secret>"
  debug         = "<debug>"
}
```

## Example Usage

```
AUTH0_DOMAIN="<domain>" \
AUTH0_CLIENT_ID="<client-id>" \
AUTH0_CLIENT_SECRET="<client_secret>" \
terraform plan
```
