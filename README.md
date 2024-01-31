# terraform-minikube-cluster

A `terraform` project for `minikube` clusters.

## dependencies

| name                                                   | description                                         |
|--------------------------------------------------------|-----------------------------------------------------|
| [pyenv](https://github.com/pyenv/pyenv)                | python version management                           |
| [poetry](https://github.com/python-poetry)             | python packaging and dependency management          |
| [pre-commit](https://github.com/pre-commit/pre-commit) | multi-language package manager for pre-commit hooks |
| [terraform](https://github.com/hashicorp/terraform)    | infrastructure as code tool                         |
| [minikube](https://github.com/kubernetes/minikube)     | local kubernetes cluster                            | 

## install

development:
```shell
poetry install
poetry shell
pre-commit install
```

production:
```shell
poetry install --without dev
```

## build

> [!IMPORTANT]  
> `src/terraform_minikube_cluster` is not currently used.

package:
```shell
poetry build
```

## usage

run:
```shell
cat <<EOF > terraform.tfvars
cluster_name = "minikube"
driver       = "docker"
nodes        = 2
cpus         = 4
memory       = 4096
disk_size    = 16384
extra_disks  = 0
EOF
terraform init
terraform plan
terraform apply
```

test:
```shell
tox run
```

doc:
```shell
make -C docs html
```

check:
```shell
pre-commit run
```
