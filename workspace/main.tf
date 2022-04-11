# Setup terraform cloud and workspace
terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "your-organization"

    workspaces {
      name = "your-tfcloud-workspace"
    }
  }
}

# Setup terraform providers
terraform {
  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = "0.28.1"
    }
  }

  required_version = ">= 1.1.7"
}
