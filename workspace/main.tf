# Setup terraform cloud and workspace
terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "lanandra"

    workspaces {
      name = "terraform-tfc-workspace"
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
