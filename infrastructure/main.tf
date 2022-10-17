resource "aws_vpc" "group2_increment_nr" {
    cidr_block = var.vpc_cidr_block
    tags = {
        Name = var.vpc_name
    }
}