workflow "API Pipeline" {
  on = "push"
  resolves = ["docker://python:3.6"]
}

action "docker://python:3.6" {
  uses = "docker://python"
  secrets = ["GITHUB_TOKEN"]
}
