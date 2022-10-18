variable "vpc_name" {
    description = "vpc name"
    type = string
}

variable "vpc_cidr_block" {
  description = "vpc cidr block"
  type = string
}

variable "public_subnet_name" {
  description = "subnet public name"
  type = string
}

variable "public_subnet_cidr_block" {
    description = "subnet cidr block"
    type = string
}

variable "igw_tagName_group2_miko" {
    description = "internet gateway tag name for group2 miko"
    type = string
}

variable "ami_name" {
  description = "ami name"
  type = string
}

variable "ami_owner" {}

variable "ami_instance_type" {
  description = "ami name"
  type = string
}

variable "ec2_name" {}

variable "keypair_name" {}