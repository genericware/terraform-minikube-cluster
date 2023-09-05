resource "minikube_cluster" "default" {
  kubernetes_version  = var.kubernetes_version
  cluster_name        = "minikube-${var.environment}-${var.region}"
  driver              = var.driver
  nodes               = var.nodes
  cpus                = var.cpus
  memory              = "${var.memory}mb"
  disk_size           = "${var.disk_size}mb"
  extra_disks         = var.extra_disks
  preload             = true
  cache_images        = true
  auto_update_drivers = true
  install_addons      = true
  addons              = []
}
