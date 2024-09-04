# provider.tf
terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 3.5"
    }
  }
  required_version = ">= 0.12"
}

provider "google" {
  project     = "multcloud-engineer"
  region      = "us-central1"
  credentials = file("c:/meu_projeto_terraform/multcloud-engineer-642c8edc678e.json")
}
