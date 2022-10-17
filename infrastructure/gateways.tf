resource "aws_internet_gateway" "igw_group2_miko" {
  vpc_id = aws_vpc.group2_increment_nr.id
  tags = {
    Name = var.igw_tagName_group2_miko
  }
}