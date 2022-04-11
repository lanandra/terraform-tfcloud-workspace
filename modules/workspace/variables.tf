# Set Variables
variable "workspace_name" {
  type        = string
  description = "Terraform Cloud workspace name"
  default     = ""
}

variable "organization_name" {
  type        = string
  description = "Terraform Cloud organization name"
  default     = "lanandra"
}

variable "destroy_plan" {
  type        = bool
  description = "Whether destroy plans can be queued on the workspace"
  default     = true
}

variable "speculative_plan" {
  type        = bool
  description = "Whether this workspace allows speculative plans"
  default     = false
}

variable "working_directory" {
  type        = string
  description = "Path to working directory"
  default     = "/"
}

variable "vcs_repository" {
  type        = string
  description = "VCS repository path"
  default     = ""
}

variable "vcs_branch" {
  type        = string
  description = "VCS repository working branch"
  default     = ""
}
