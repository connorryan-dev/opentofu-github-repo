output "repo_url" {
  description = "GitHub repository URL"
  value       = github_repository.repo.html_url
}

output "clone_url" {
  description = "HTTPS clone URL"
  value       = github_repository.repo.http_clone_url
}

output "ssh_clone_url" {
  description = "SSH clone URL"
  value       = github_repository.repo.ssh_clone_url
}
