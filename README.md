# Terraform Resource Group
A terraform module to setup Resource Group on Azure

## Usage

```hcl

module "resource_group" {
  source   = "../modules/resource_group"
  name     = "${var.project_name}-${var.environment}"
  location = var.location
  tags     = local.common_tags
}

```

## Doc generation

Code formatting and documentation for variables and outputs is generated using [pre-commit-terraform hooks](https://github.com/antonbabenko/pre-commit-terraform) which uses [terraform-docs](https://github.com/segmentio/terraform-docs).


And install `terraform-docs` with
```bash
go get github.com/segmentio/terraform-docs
```
or
```bash
brew install terraform-docs.
```

## Contributing

Report issues/questions/feature requests on in the issues section.

Full contributing guidelines are covered [here](CONTRIBUTING.md).

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| azurerm | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| location | Location to deploy resources. | `string` | n/a | yes |
| name | Resource group name | `string` | n/a | yes |
| tags | n/a | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| name | n/a |
| resource\_group\_id | n/a |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
