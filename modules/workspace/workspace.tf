resource "tfe_workspace" "workspace" {
  name                = var.workspace_name
  organization        = var.organization_name
  allow_destroy_plan  = var.destroy_plan
  speculative_enabled = var.speculative_plan
  working_directory   = var.working_directory

  vcs_repo {
    identifier     = var.vcs_repository
    branch         = var.vcs_branch
    oauth_token_id = "your-oauth-token" # Check your organizations settings > providers > find oauth_token_id
  }
}

resource "tfe_variable" "aws_access_key" {
  key          = "AWS_ACCESS_KEY_ID"
  value        = "default" # Change this with your AWS_ACCESS_KEY_ID after variable has been created | No hardcoded!
  category     = "env"
  workspace_id = tfe_workspace.workspace.id

  lifecycle {
    ignore_changes = [
      value
    ]
  }
}

resource "tfe_variable" "aws_secret_key" {
  key          = "AWS_SECRET_ACCESS_KEY"
  value        = "default" # Change this with your AWS_SECRET_ACCESS_KEY after variable has been created | No hardcoded!
  category     = "env"
  sensitive    = true
  workspace_id = tfe_workspace.workspace.id

  lifecycle {
    ignore_changes = [
      value
    ]
  }
}
