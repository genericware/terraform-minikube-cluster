resource "kubernetes_namespace" "minio" {
  metadata {
    name = "minio"
    labels = {
      "istio-injection" = "enabled"
    }
  }
}

