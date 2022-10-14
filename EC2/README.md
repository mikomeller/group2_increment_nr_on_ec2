<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.33.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_instance.group_2_instance](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |
| [aws_ami.ubuntu_image](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami) | data source |
| [aws_security_group.security_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/security_group) | data source |
| [aws_subnet.public_subnet](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/subnet) | data source |
| [aws_vpc.vpc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/vpc) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ec2_name"></a> [ec2\_name](#input\_ec2\_name) | The name of the EC2 instance | `string` | n/a | yes |
| <a name="input_instance_ec2_type"></a> [instance\_ec2\_type](#input\_instance\_ec2\_type) | The type of the EC2 instance for movie app | `string` | n/a | yes |
| <a name="input_keypair_name"></a> [keypair\_name](#input\_keypair\_name) | The keypair | `string` | n/a | yes |
| <a name="input_public_subnet_name"></a> [public\_subnet\_name](#input\_public\_subnet\_name) | Name of my Public Subnet 1 | `string` | n/a | yes |
| <a name="input_sg_name"></a> [sg\_name](#input\_sg\_name) | The name of the EC2 instance | `string` | n/a | yes |
| <a name="input_ubuntu_ami_name"></a> [ubuntu\_ami\_name](#input\_ubuntu\_ami\_name) | The name of the AMI | `string` | n/a | yes |
| <a name="input_ubuntu_ami_owner"></a> [ubuntu\_ami\_owner](#input\_ubuntu\_ami\_owner) | The owner ID of the AMI | `string` | n/a | yes |
| <a name="input_vpc_name"></a> [vpc\_name](#input\_vpc\_name) | The name of the VPC | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->