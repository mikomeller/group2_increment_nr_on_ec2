resource "aws_instance" "webserver_group2_miko" {
  ami                    = data.aws_ami.ubuntu_image.id
  instance_type          = var.ami_instance_type
  subnet_id              = aws_subnet.group2_public_sn.id
  vpc_security_group_ids = [aws_security_group.sg_group2_miko.id]
  key_name               = var.keypair_name
  #   associate_public_ip_address = true
  tags = {
    Name = var.ec2_name
  }
}

data "aws_ami" "ubuntu_image" {
  most_recent = true
  owners      = [var.ami_owner]
  filter {
    name   = "name"
    values = [var.ami_name]
  }
}