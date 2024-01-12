resource "minikube_cluster" "default" {
  cluster_name        = var.cluster_name
  driver              = var.driver
  network             = var.network
  nodes               = var.nodes
  cpus                = var.cpus
  memory              = "${var.memory}mb"  # todo: format
  disk_size           = "${var.disk_size}mb"  # todo: format
  extra_disks         = var.extra_disks
  preload             = true
  cache_images        = true
  auto_update_drivers = true
  install_addons      = true
  addons = [
    "default-storageclass",
    "storage-provisioner"
  ]
}
