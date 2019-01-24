workflow "Lint, Build, Test, Deploy" {
    on = "push"
    resolves = ["Lint","Test"]
}

action "Lint" {
    uses = "./.github/action-lint"
}

action "Test" {
    uses = "./.github/action-test"
}
