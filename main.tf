terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.23.0"
    }
    helm = {
      source  = "hashicorp/helm"
      version = "2.11.0"
    }
    local = {
      source  = "hashicorp/local"
      version = ">=2.4.0"
    }
    minikube = {
      source  = "scott-the-programmer/minikube"
      version = "0.3.2"
    }
  }
}
