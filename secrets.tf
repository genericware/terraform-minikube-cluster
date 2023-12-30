# todo: remove secret for different method
resource "kubernetes_secret" "argocd_admin" {
  metadata {
    name      = "argocd-secret"
    namespace = kubernetes_namespace.argocd.metadata.0.name
  }
  data = {
    "admin.password" = bcrypt(var.argocd_admin_password)
  }
}

# todo: remove secret for different method
resource "kubernetes_secret" "minio_root" {
  metadata {
    name      = "root-minio-secret"
    namespace = kubernetes_namespace.minio.metadata.0.name
  }
  data = {
    "rootUser"     = "root"
    "rootPassword" = var.minio_root_password
  }
}

# todo: remove secret for different method
resource "kubernetes_secret" "minio_loki" {
  metadata {
    name      = "loki-minio-secret"
    namespace = kubernetes_namespace.minio.metadata.0.name
  }
  data = {
    "secretKey" = var.minio_loki_password
  }
}

# todo: remove secret for different method
resource "kubernetes_secret" "minio_tempo" {
  metadata {
    name      = "tempo-minio-secret"
    namespace = kubernetes_namespace.minio.metadata.0.name
  }
  data = {
    "secretKey" = var.minio_tempo_password
  }
}
