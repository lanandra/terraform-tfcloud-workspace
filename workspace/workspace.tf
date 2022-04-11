# Create TF Cloud Workspace from module
module "your_workspace" {
  source = "../modules/workspace"

  workspace_name    = "your-workspace-name"
  organization_name = "your-organization-name"
  working_directory = "/working-directory" # Change with working directory path
  vcs_repository    = "organizatio/repository" # Change with your VCS repository path
  vcs_branch        = "main" # Change as needed with your working VCS branch
}