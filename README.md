# Paul Schock Instance Example Module

A very not so special module for a very not so special thing; aws_instance. 

Repo serves to various terraform toolsets.

1. https://github.com/antonbabenko/pre-commit-terraform
1. ...

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | 0.12.24 |

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| aws\_region | AWS region | `string` | `"us-west-2"` | no |
| instance\_size | Provide an input if you wish to override the default 't3a.medium' selection | `string` | `""` | no |

## Outputs

No output.

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->