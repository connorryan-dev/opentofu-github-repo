resource "github_repository" "repo" {
  name        = var.repo_name
  description = var.repo_description
  visibility  = var.visibility

  has_issues = var.has_issues
  has_wiki   = var.has_wiki

  auto_init = true
}
