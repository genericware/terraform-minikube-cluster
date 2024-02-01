terraform {
  required_providers {
    minikube = {
      source  = "scott-the-programmer/minikube"
      version = "0.3.8"
    }
  }
}

resource "minikube_cluster" "default" {
  cluster_name        = var.cluster_name
  driver              = var.driver
  network             = var.network
  cni                 = var.cni
  nodes               = var.nodes
  cpus                = var.cpus
  memory              = format("%dmb", var.memory)
  disk_size           = format("%dmb", var.disk_size)
  extra_disks         = var.extra_disks
  preload             = true
  cache_images        = true
  auto_update_drivers = true
  install_addons      = true
  extra_config = [
    "apiServer.enable-admission-plugins=\"NamespaceLifecycle,LimitRanger,ServiceAccount,DefaultStorageClass,DefaultTolerationSeconds,NodeRestriction,MutatingAdmissionWebhook,ValidatingAdmissionWebhook,ResourceQuota\"",
    "controllerManager.allocate-node-cidrs=\"true\"",
    "controllerManager.leader-elect=\"false\"",
    "scheduler.leader-elect=\"false\"",
    "etcd.proxy-refresh-interval=\"70000\"",
  ]
  addons = [
    "default-storageclass",
    "storage-provisioner",
    "metrics-server"
  ]
}
