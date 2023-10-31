resource "kubernetes_namespace" "argocd" {
  metadata {
    name = "argocd"
    labels = {
      "istio-injection" = "enabled"
    }
  }
}

resource "kubernetes_namespace" "cert_manager" {
  metadata {
    name = "cert-manager"
    labels = {
      "istio-injection" = "enabled"
    }
  }
}

resource "kubernetes_namespace" "istio_system" {
  metadata {
    name = "istio-system"
    labels = {
      "istio-injection" = "enabled"
    }
  }
}


resource "kubernetes_namespace" "istio_ingress" {
  metadata {
    name = "istio-ingress"
    labels = {
      "istio-injection" = "enabled"
    }
  }
}

resource "kubernetes_namespace" "kiali-operator" {
  metadata {
    name = "kiali-operator"
  }
}

resource "kubernetes_namespace" "kube_prometheus" {
  metadata {
    name = "kube-prometheus"
    labels = {
      "istio-injection" = "enabled"
    }
  }
}

resource "kubernetes_namespace" "loki" {
  metadata {
    name = "loki"
    labels = {
      "istio-injection" = "enabled"
    }
  }
}

resource "kubernetes_namespace" "promtail" {
  metadata {
    name = "promtail"
    labels = {
      "istio-injection" = "enabled"
    }
  }
}

resource "kubernetes_namespace" "tempo" {
  metadata {
    name = "tempo"
    labels = {
      "istio-injection" = "enabled"
    }
  }
}

resource "kubernetes_namespace" "minio" {
  metadata {
    name = "minio"
    labels = {
      "istio-injection" = "enabled"
    }
  }
}

resource "kubernetes_namespace" "jaeger" {
  metadata {
    name = "jaeger"
    labels = {
      "istio-injection" = "enabled"
    }
  }
}

resource "kubernetes_namespace" "knative_serving" {
  metadata {
    name = "knative-serving"
    labels = {
      "istio-injection" = "enabled"
      # todo: ignore or parametrize these labels; they're created from the operator
      "app.kubernetes.io/name"    = "knative-serving"
      "app.kubernetes.io/version" = "1.10.1"
    }
  }
}

resource "kubernetes_namespace" "knative_eventing" {
  metadata {
    name = "knative-eventing"
    labels = {
      # todo: ignore or parametrize these labels; they're created from the operator
      "app.kubernetes.io/name" = "knative-eventing"
    }
  }
}

resource "kubernetes_namespace" "kafka" {
  metadata {
    name = "kafka"
    labels = {
      "istio-injection" = "enabled"
    }
  }
}

resource "kubernetes_namespace" "postgres_operator" {
  metadata {
    name = "postgres-operator"
    labels = {
      "istio-injection" = "enabled"
    }
  }
}

resource "kubernetes_namespace" "redis_cluster" {
  metadata {
    name = "redis-cluster"
    labels = {
      "istio-injection" = "enabled"
    }
  }
}
