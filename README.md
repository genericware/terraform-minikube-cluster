# minikube-cluster

## install

* driver
    * linux: [kvm](https://www.linux-kvm.org/), [qemu](https://www.qemu.org/)
* [docker](https://docs.docker.com/)
* [minikube](https://minikube.sigs.k8s.io/docs/)
* [kubectl](https://kubernetes.io/docs/reference/kubectl/)
* [terraform](https://www.terraform.io/)

linux:
```terraform
environment = "development"
region = "local"
kubernetes_version = "v1.26.1"
driver = "kvm2"  # todo: test qemu2 on linux
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

test:
```shell
cd test
go test -v -timeout 30m
```

pre-commit:
```shell
pre-commit install
pre-commit run
```
