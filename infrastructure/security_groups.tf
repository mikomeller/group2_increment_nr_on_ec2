resource "aws_security_group" "sg_group2_miko" {
  name = "sg_group2_miko"
  description = "security group for ssh/http group2_miko"
  vpc_id = aws_vpc.group2_increment_nr.id

    ingress {
        description = "ssh to the server"
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        description = "http to the server"
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
    tags = {
      Name = "sg_group2_miko"
    }
}