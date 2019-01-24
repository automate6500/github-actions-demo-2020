workflow "Lint, Build, Test, Deploy" {
  on = "push"
  resolves = ["docker://python:3.6"]
}

action "docker://python:3.6" {
  uses = "docker://python:3.6"
}
