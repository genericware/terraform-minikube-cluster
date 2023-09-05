variable "environment" {
  type        = string
  description = "The environment name."
}

variable "region" {
  type        = string
  description = "The region name."
}

variable "kubernetes_version" {
  type        = string
  description = "The Kubernetes version."
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
