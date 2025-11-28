terraform {
  required_providers {
    okta = {
      source  = "okta/okta"
      version = "~> 4.0"
    }
  }
}

provider "okta" {
  org_name  = var.okta_org
  base_url  = "okta.com"
  api_token = var.okta_api_token
}

resource "okta_group" "engineering" {
  name        = "Engineering"
  description = "Engineering group"
}
