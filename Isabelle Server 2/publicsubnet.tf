resource "aws_subnet" "subnet_four"{
    depends_on = [
      aws_vpc.second
    ]
    vpc_id=aws_vpc.second.id
    cidr_block= "192.168.4.0/24"
    availability_zone= "eu-central-1a"
    tags = {
        Name="Public Subnet Four"
    }
}

resource "aws_route_table" "subnet_four_RT" {
  vpc_id = aws_vpc.second.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw_two.id
  }

  route {
   cidr_block        = "0.0.0.0/0"
 gateway_id = aws_internet_gateway.gw_two.id
  }

  tags = {
    Name = "Route for gw two"
  }
}