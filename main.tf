terraform {
  required_providers {
    helm = {
      source  = "hashicorp/helm"
      version = ">= 2.1.2"
    }
  }

  backend "remote" {
    organization = "ffddorf-dev"
    workspaces {
      prefix = "dorfadventure-traefik-"
    }
  }
}
