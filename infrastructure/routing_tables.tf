resource "aws_route_table" "route_table_group2" {
  vpc_id = aws_vpc.group2_increment_nr.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw_group2_miko.id
  }
  tags = {
    Name = "rt_group2_miko"
  }
}

resource "aws_route_table_association" "rt_assoc_group2_miko" {
  subnet_id      = aws_subnet.group2_public_sn.id
  route_table_id = aws_route_table.route_table_group2.id
}