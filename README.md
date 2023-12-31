# terraform-minikube-cluster

[//]: # (todo: description)

## dependencies

| dependency     | description                                |
|----------------|--------------------------------------------|
| pyenv          | python version management                  |
| poetry         | python packaging and dependency management |
| terraform      |                                            |
| tflint         |                                            |
| terraform-docs |                                            |

## install

[//]: # (todo: linux kvm2 specific driver install)
[//]: # (todo: macos qemu2 specific driver install)

## run

[//]: # (todo: linux kvm2 specific quickstart example)
[//]: # (todo: macos qemu2 specific quickstart example)

cluster:
```shell
terraform init
terraform plan
terraform apply
```

test:
```shell
pytest .
```

coverage:
```shell
coverage run -m pytest && coverage report -m
```

matrix:
```shell
tox run
```

[//]: # (todo: pre-commit hook for terraform-docs)
[//]: # (todo: pre-commit hook for sphinx (include terraform-docs build)
doc:
```shell
make -C docs html
```

check:
```shell
pre-commit run
```

format:
```shell
black .
```

lint:
```shell
ruff .
```

type:
```shell
mypy .
```
