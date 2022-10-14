data "aws_vpc" "vpc" {
  filter {
    name   = "tag:Name"
    values = [var.vpc_name]
  }
}

data "aws_subnet" "public_subnet" {
  filter {
    name   = "tag:Name"
    values = [var.public_subnet_name]
  }
}

data "aws_ami" "ubuntu_image" {
  most_recent = true
  owners      = [var.ubuntu_ami_owner]

  filter {
    name   = "name"
    values = [var.ubuntu_ami_name]
  }
}

data "aws_security_group" "security_group" {
  filter {
    name   = "tag:Name"
    values = [var.sg_name]
  }
}