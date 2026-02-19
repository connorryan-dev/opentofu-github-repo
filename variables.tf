variable "repo_name" {
  type        = string
  description = "Name of the GitHub repository"
}

variable "repo_description" {
  type        = string
  description = "Short description of the repository"
  default     = ""
}

variable "visibility" {
  type        = string
  description = "Repository visibility: private or public"
  default     = "private"

  validation {
    condition     = contains(["private", "public"], var.visibility)
    error_message = "visibility must be 'private' or 'public'."
  }
}

variable "has_issues" {
  type        = bool
  description = "Enable GitHub Issues"
  default     = true
}

variable "has_wiki" {
  type        = bool
  description = "Enable GitHub Wiki"
  default     = false
}

variable "org_name" {
  type        = string
  description = "GitHub organization name — from Variable Collection as TF_VAR_org_name"
}

variable "github_token" {
  type        = string
  description = "GitHub personal access token"
  sensitive   = true
}
