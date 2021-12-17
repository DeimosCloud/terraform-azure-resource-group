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
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_management_lock.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_lock) | resource |
| [azurerm_resource_group.resource_group](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_location"></a> [location](#input\_location) | Location to deploy resources. | `string` | n/a | yes |
| <a name="input_lock"></a> [lock](#input\_lock) | If true, the resource group is locked and cannot be deleted | `bool` | `false` | no |
| <a name="input_lock_level"></a> [lock\_level](#input\_lock\_level) | Specifies the Level to be used for this Lock. Possible values are CanNotDelete and ReadOnly | `string` | `"CanNotDelete"` | no |
| <a name="input_lock_notes"></a> [lock\_notes](#input\_lock\_notes) | Specifies some notes about the lock. Maximum of 512 characters | `string` | `""` | no |
| <a name="input_name"></a> [name](#input\_name) | Resource group name | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | n/a | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | n/a |
| <a name="output_name"></a> [name](#output\_name) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
