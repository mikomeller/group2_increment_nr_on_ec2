resource "aws_route_table" "public_rt_two" {
  vpc_id = aws_vpc.second.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw_two.id  #internet gateway name 
  }

  tags = {
    Name = "public-rt-two"  # public-rt
  }
}

resource "aws_route_table_association" "public_rt_assoc_D" {
  subnet_id      = aws_subnet.subnet_four.id
  route_table_id = aws_route_table.public_rt_two.id
}