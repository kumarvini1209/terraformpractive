terraform {
  backend "s3" {
    bucket = "terraform-state-vinee-2026"
    key    = "terraform/dev/terraform.tfstate"
    region = "us-west-2"

    use_lockfile = true
  }
}