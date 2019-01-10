# travis-ci-action
GitHub Action for triggering Travis CI build

## Use
`.github/main.workflow`

```
workflow "Travis CI" {
  on = "push"
  resolves = ["Travis CI"]
}

action "Travis CI" {
  uses = "BanzaiMan/travis-ci-action@master"
  secrets = ["TRAVIS_TOKEN"]
  env = {
    SLUG = "OWNER/REPO"
    SITE = "org"
  }
} # Filter for a new tag
```
