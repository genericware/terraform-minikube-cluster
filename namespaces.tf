# todo: move namespace management to kustomization
resource "kubernetes_namespace" "argocd" {
  metadata {
    name = "argocd"
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

