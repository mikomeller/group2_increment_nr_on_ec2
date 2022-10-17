resource "aws_route_table" "group_2_route_table" {
  vpc_id = aws_vpc.group_2_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.group_2_igw.id

  }

  tags = {
    Name = "Group-2-RT"
  }
}

resource "aws_route_table_association" "group_2_rt_assoc" {
  subnet_id      = aws_subnet.group_2_public_subnet.id
  route_table_id = aws_route_table.group_2_route_table.id
}
