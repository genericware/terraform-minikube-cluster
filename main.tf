terraform {
  required_providers {
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
