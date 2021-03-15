# Terraform Docs
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.13.0 |
| aws | ~> 3.0 |

## Providers

| Name | Version |
|------|---------|
| aws | ~> 3.0 |
| template | n/a |
| tls | n/a |

## Modules

No Modules.

## Resources

| Name |
|------|
| [aws_eip](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip) |
| [aws_instance](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) |
| [aws_key_pair](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/key_pair) |
| [aws_security_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) |
| [template_file](https://registry.terraform.io/providers/hashicorp/template/latest/docs/data-sources/file) |
| [tls_private_key](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key) |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| additional\_tags | Additional resource tags | `map(string)` | <pre>{<br>  "Name": "Teamspeak 3 Server"<br>}</pre> | no |
| aws\_credentials\_profile | High level profile name that the terraform uses for aws access to create new role/policy/user for pihole deployment | `string` | n/a | yes |
| aws\_region | Region of aws to use | `string` | `"eu-west-2"` | no |
| ingress\_access\_ip\_address | Ip address that you will access the ts3server from. All other access will be locked. | `string` | n/a | yes |
| instance\_ami\_id | Requested Instance Ami Image Id | `string` | `"ami-05c424d59413a2876"` | no |
| instance\_hostname | Requested Instance Hostname | `string` | `"aws-ts3-server"` | no |
| instance\_type | Requested Instance Type | `string` | `"t3.nano"` | no |
| instance\_volume\_size | Requested Instance Volume Size | `number` | `8` | no |
| key\_pair\_name | Name to give the generated keypair that will be associated with the ts3 server ec2 isntance for ssh access | `string` | `"server-keypair"` | no |
| prefix\_identifier | Prefix added to all resources in aws to differentiate between types of infra setup | `string` | `"ts3-"` | no |

## Outputs

| Name | Description |
|------|-------------|
| private\_generated\_key | The generated private key used to access the joint ec2 instances via ssh |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
