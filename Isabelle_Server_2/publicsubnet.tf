resource "aws_subnet" "subnet_four"{
  
    vpc_id= aws_vpc.second.id
    cidr_block= "192.168.4.0/24"
    availability_zone= "eu-central-1a"
    map_public_ip_on_launch = true
    tags = {
        Name="Public Subnet Four"
    }
}




  