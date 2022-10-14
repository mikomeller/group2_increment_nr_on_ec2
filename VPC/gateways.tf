resource "aws_internet_gateway" "group_2_igw" {
  vpc_id = aws_vpc.group_2_vpc.id

  tags = {
    Name = "Group-2-IGW"
  }
}