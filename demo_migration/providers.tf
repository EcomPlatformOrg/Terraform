terraform {
  required_version = ">= 1.5.5"

  cloud {
    organization = "demo_migration"
    workspaces {
      name = "demo-terraform-cloud-migrate"
    }
  }

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}

provider "google" {
  project = local.project_id
  region  = local.project_region
}
