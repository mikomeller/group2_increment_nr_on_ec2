resource "aws_instance" "server_group_project" {
  ami                    = data.aws_ami.aws_linux_image.id
  instance_type          = var.app_ec2_type
  subnet_id              = aws_subnet.subnet_four.id
  vpc_security_group_ids = [aws_security_group.project_sg.id]
 


  tags = {
    Name = "second_server"
  }
  associate_public_ip_address = true
}