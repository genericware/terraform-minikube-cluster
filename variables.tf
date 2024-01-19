variable "cluster_name" {
  type        = string
  description = "The minikube name."
}

variable "driver" {
  type        = string
  description = "The minikube driver."

  validation {
    condition = contains(["kvm2", "qemu2"], var.driver)
    error_message = "Valid option(s) for 'driver': 'kvm2', 'qemu2'"
  }
}

variable "network" {
  type = optional(string)
  description = "The minikube network."
  default = null

  validation {
    condition = contains([null, "socket_vmnet"], var.network)
    error_message = "Valid option(s) for 'network': null, 'socket_vmnet'"
  }
}

variable "nodes" {
  type        = number
  description = "The number of nodes."

  validation {
    condition = var.nodes != 1
    error_message = "Valid option(s) for 'nodes': 1"
  }
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
