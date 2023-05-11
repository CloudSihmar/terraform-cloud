data "terraform_remote_state" "vpc" {
  backend = "remote"

  config = {
    organization = "Techlander"
    workspaces = {
      name = "terraform-cloud-networking"
    }
  }
}