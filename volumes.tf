resource "kubernetes_persistent_volume" "minio" {
  metadata {
    name = "minio"
  }
  spec {
    storage_class_name = "standard"
    access_modes = [
      "ReadWriteOnce"
    ]
    capacity = {
      "storage" = "30Gi"
    }
    persistent_volume_source {
      host_path {
        path = "/data/pv001"
      }
    }
  }
}

resource "kubernetes_persistent_volume" "tempo_distributed_ingester_0" {
  metadata {
    name = "tempo-distributed-ingester-0"
  }
  spec {
    storage_class_name = "standard"
    access_modes = [
      "ReadWriteOnce"
    ]
    capacity = {
      "storage" = "10Gi"
    }
    persistent_volume_source {
      host_path {
        path = "/data/pv002"
      }
    }
  }
}

resource "kubernetes_persistent_volume" "tempo_distributed_ingester_1" {
  metadata {
    name = "tempo-distributed-ingester-1"
  }
  spec {
    storage_class_name = "standard"
    access_modes = [
      "ReadWriteOnce"
    ]
    capacity = {
      "storage" = "10Gi"
    }
    persistent_volume_source {
      host_path {
        path = "/data/pv003"
      }
    }
  }
}

resource "kubernetes_persistent_volume" "tempo_distributed_ingester_2" {
  metadata {
    name = "tempo-distributed-ingester-2"
  }
  spec {
    storage_class_name = "standard"
    access_modes = [
      "ReadWriteOnce"
    ]
    capacity = {
      "storage" = "10Gi"
    }
    persistent_volume_source {
      host_path {
        path = "/data/pv004"
      }
    }
  }
}
