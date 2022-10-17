resource "aws_instance" "group_2_instance" {
  ami                    = data.aws_ami.ubuntu_image.id
  instance_type          = var.instance_ec2_type
  subnet_id              = data.aws_subnet.public_subnet.id
  vpc_security_group_ids = [data.aws_security_group.security_group.id]
  key_name               = var.keypair_name
  #   user_data = "${path.module}/user-data.sh"

  tags = {
    Name = var.ec2_name
  }
}