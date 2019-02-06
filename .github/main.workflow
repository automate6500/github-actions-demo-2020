workflow "Pipeline" {
    on = "push"
    resolves = ["Check",
                "Build",
                "Deploy Staging",
                "Test Staging",
                "Deploy Production",
                "Test Production"]
}

action "Check" {
    uses = "./.github/action-check"
}

action "Build" {
    uses = "./.github/action-build"
}

action "Deploy Staging" {
    uses = "./.github/action-deploy"
    args = "staging"
}

action "Test Staging" {
    uses = "./.github/action-test"
    args = "staging"
}

action "Deploy Production" {
    uses = "./.github/action-deploy"
    args = "production"
}

action "Test Production" {
    uses = "./.github/action-test"
    args = "production"
}
