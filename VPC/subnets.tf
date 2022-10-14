resource "aws_subnet" "group_2_public_subnet" {
  vpc_id                  = aws_vpc.group_2_vpc.id
  cidr_block              = var.subnet_cidr_block
  availability_zone       = data.aws_availability_zones.available.names[0]
  map_public_ip_on_launch = true
  tags = {
    Name = var.public_subnet
  }
}