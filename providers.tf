terraform {
  required_version = "~> 1.0"

  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }
  }

  backend "remote" {
    organization = "fabiend"

    workspaces {
      name = "github-fabiendelpierre"
    }
  }
}

provider "github" {
  token = var.github_personal_token
}