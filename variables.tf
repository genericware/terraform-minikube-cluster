# secrets
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
variable "cluster_name" {
  type        = string
  description = "The minikube name."
}

variable "driver" {
  type        = string
  description = "The minikube driver."
}

variable "network" {
  type = optional(string)
  description = "The minikube network."
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
