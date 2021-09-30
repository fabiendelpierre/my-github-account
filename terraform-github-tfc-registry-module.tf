resource "github_repository" "github_tfc_registry_module" {
  name        = "terraform-github-tfc-registry-module"
  description = "A Terraform module to create a GitHub repository for a Terraform module from a template, and adds the module to a Terraform Cloud private module registry"
  visibility  = "public"

  template {
    owner      = local.my_github_org
    repository = local.tf_module_repo_template
  }
}