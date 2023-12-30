# todo: move namespace management to kustomization
resource "kubernetes_namespace" "argocd" {
  metadata {
    name = "argocd"
    labels = {
      "istio-injection" = "enabled"
    }
  }
}

# todo: remove in favor of argocd creating
resource "kubernetes_namespace" "cert-manager" {
  metadata {
    name = "cert-manager"
    labels = {
      "istio-injection" = "enabled"
    }
  }
}

# todo: remove in favor of argocd creating namespace + secrets
resource "kubernetes_namespace" "minio" {
  metadata {
    name = "minio"
    labels = {
      "istio-injection" = "enabled"
    }
  }
}

