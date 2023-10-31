# project
variable "name" {
  type        = string
  description = "The project name."
}

variable "description" {
  type        = string
  description = "The project description."
}

variable "organization" {
  type        = string
  description = "The project organization."
}

variable "environment" {
  type        = string
  description = "The environment name."
}

variable "region" {
  type        = string
  description = "The region name."
}

variable "domain" {
  type        = string
  description = "The domain name."
}

variable "platform" {
  type        = string
  description = "The platform name."
}

variable "profile" {
  type        = string
  description = "The profile name."
}

variable "repository" {
  type        = string
  description = "The repository url."
}

variable "branch" {
  type        = string
  description = "The repository branch."
}

variable "path" {
  type        = string
  description = "The repository path."
}

# network
variable "network_mode" {
  type        = string
  description = "The network mode."
  default     = "istio"
}

variable "network_issuer" {
  type        = string
  description = "The network issuer."
  default     = "selfsigned"
}

# authentication
variable "argocd_admin_password" {
  type        = string
  description = "The ArgoCD admin password."
  sensitive   = true
}

variable "grafana_admin_password" {
  type        = string
  description = "The ArgoCD admin password."
  sensitive   = true
}

variable "minio_root_password" {
  type        = string
  description = "The MinIO root password."
  sensitive   = true
}

variable "minio_loki_password" {
  type        = string
  description = "The MinIO loki password."
  sensitive   = true
}

variable "minio_tempo_password" {
  type        = string
  description = "The MinIO tempo password."
  sensitive   = true
}

# cluster
variable "kubernetes_version" {
  type        = string
  description = "The kubernetes version."
}

variable "cluster_name" {
  type        = string
  description = "The minikube name."
}

variable "driver" {
  type        = string
  description = "The minikube driver."
}

variable "nodes" {
  type        = number
  description = "The number of nodes."
}

variable "cpus" {
  type        = number
  description = "The number of cpus."
}

variable "memory" {
  type        = number
  description = "The amount of memory."
}

variable "disk_size" {
  type        = number
  description = "The total disk space."
}

variable "extra_disks" {
  type        = number
  description = "The number of additional disks."
}

# switch
variable "enable_argocd" {
  type        = bool
  description = "Enables argocd."
  default     = false
}

variable "enable_cert_manager" {
  type        = bool
  description = "Enables cert-manager."
  default     = true
}

variable "enable_istio" {
  type        = bool
  description = "Enables Istio."
  default     = true
}

variable "enable_kiali" {
  type        = bool
  description = "Enables Kiali."
  default     = false
}

variable "enable_knative" {
  type        = bool
  description = "Enables Knative."
  default     = false
}

variable "enable_prometheus" {
  type        = bool
  description = "Enables Prometheus."
  default     = false
}

variable "enable_minio" {
  type        = bool
  description = "Enables MinIO."
  default     = false
}

variable "enable_loki" {
  type        = bool
  description = "Enables Loki."
  default     = false
}

variable "enable_promtail" {
  type        = bool
  description = "Enables Promtail."
  default     = false
}

variable "enable_tempo" {
  type        = bool
  description = "Enables Tempo."
  default     = false
}

variable "enable_kafka" {
  type        = bool
  description = "Enables Kafka."
  default     = false
}

# version
variable "version_argocd" {
  type        = string
  description = "The version for argo-cd."
  default     = "5.38.1"
}

variable "version_cert_manager" {
  type        = string
  description = "The version for cert-manager."
  default     = "1.13.2"
}

variable "version_istio" {
  type        = string
  description = "The version for istio."
  default     = "1.18.0"
}

variable "version_kiali" {
  type        = string
  description = "The version for kiali."
  default     = "1.70.0"
}

variable "version_knative_operator" {
  type        = string
  description = "The version for knative-operator."
  default     = "1.11.0"
}

variable "version_knative_serving" {
  type        = string
  description = "The version for knative-serving."
  default     = "1.11.0"
}

variable "version_knative_eventing" {
  type        = string
  description = "The version for knative-eventing."
  default     = "1.11.0"
}

variable "version_prometheus" {
  type        = string
  description = "The version for prometheus."
  default     = "48.1.1"
}

variable "version_minio" {
  type        = string
  description = "The version for minio."
  default     = "5.0.13"
}

variable "version_loki" {
  type        = string
  description = "The version for loki."
  default     = "0.69.16"
}

variable "version_promtail" {
  type        = string
  description = "The version for promtail."
  default     = "6.11.5"
}

variable "version_tempo" {
  type        = string
  description = "The version for tempo."
  default     = "1.4.8"
}

variable "version_kafka" {
  type        = string
  description = "The version for kafka."
  default     = "0.35.1"
}

# namespace
variable "namespace_argocd" {
  type        = string
  description = "The namespace for argocd."
  default     = "argocd"
}

variable "namespace_cert_manager" {
  type        = string
  description = "The namespace for cert-manager."
  default     = "cert-manager"
}

variable "namespace_istio_base" {
  type        = string
  description = "The namespace for istio base."
  default     = "istio-system"
}

variable "namespace_istio_gateway" {
  type        = string
  description = "The namespace for istio gateway."
  default     = "istio-ingress"
}

variable "namespace_istio_istiod" {
  type        = string
  description = "The namespace for istio discovery."
  default     = "istio-system"
}

variable "namespace_kiali" {
  type        = string
  description = "The namespace for kiali."
  default     = "kiali-operator"
}

variable "namespace_knative_operator" {
  type        = string
  description = "The namespace for knative-operator."
  default     = "default"
}

variable "namespace_knative_serving" {
  type        = string
  description = "The namespace for knative-serving."
  default     = "knative-serving"
}

variable "namespace_knative_eventing" {
  type        = string
  description = "The namespace for knative-eventing."
  default     = "knative-eventing"
}

variable "namespace_prometheus" {
  type        = string
  description = "The namespace for prometheus."
  default     = "kube-prometheus"
}

variable "namespace_minio" {
  type        = string
  description = "The namespace for minio."
  default     = "minio"
}

variable "namespace_loki" {
  type        = string
  description = "The namespace for loki."
  default     = "loki"
}

variable "namespace_promtail" {
  type        = string
  description = "The namespace for promtail."
  default     = "promtail"
}

variable "namespace_tempo" {
  type        = string
  description = "The namespace for tempo."
  default     = "tempo"
}

variable "namespace_kafka" {
  type        = string
  description = "The namespace for kafka."
  default     = "kafka"
}
