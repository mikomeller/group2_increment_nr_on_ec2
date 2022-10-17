resource "aws_subnet" "group2_public_sn" {
    vpc_id = aws_vpc.group2_increment_nr.id
    cidr_block = var.subnet_public_cidr_block
    map_public_ip_on_launch = true
    tags = {
        Name = var.subnet_public_name
    }
}