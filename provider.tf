terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

# Default provider
provider "aws" {
  region = var.west_region
}

# Aliased provider
provider "aws" {
  alias  = "east"
  region = var.east_region
}