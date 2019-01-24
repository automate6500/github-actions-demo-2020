workflow "Lint, Build, Test, Deploy" {
  on = "push"
  resolves = ["Lint"]
}

action "Lint" {
  uses = "./.github/action-lint"
}
