resource "aws_internet_gateway" "gw_two" {
  vpc_id = aws_vpc.second.id

  tags = {
    Name = "second_gw"
  }
}