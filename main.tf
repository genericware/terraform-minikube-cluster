terraform {
  required_version = ">= 0.12.26"
  required_providers {
    minikube = {
      source  = "scott-the-programmer/minikube"
      version = "0.3.2"
    }
  }
}
