# minikube-cluster

## install

* kvm2 or ...
* minikube
* kubectl
* terraform
* docker

linux:
```terraform
environment = "development"
region = "local"
kubernetes_version = "v1.26.1"
driver = "kvm2"
nodes = 1
cpus = 16
memory = 32768
disk_size = 102400
extra_disks = 0
```

## usage

run:
```shell
terraform init
terraform plan
terraform apply
```

pre-commit:
```shell
pre-commit install
pre-commit run
```