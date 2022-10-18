resource "aws_vpc" "second"{
    cidr_block = "192.168.0.0/17"
    tags={
        Name="second"
    }
}

data "aws_ami" "aws_linux_image" {
  owners      = [var.aws_ami_owner]
  most_recent = true
  filter {
    name   = "name"
    values = [var.aws_ami_name]
  }
}
