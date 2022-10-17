variable "vpc_name" {
    description = "vpc name"
    type = string
}

variable "vpc_cidr_block" {
  description = "vpc cidr block"
  type = string
}

variable "subnet_public_name" {
  description = "subnet public name"
  type = string
}

variable "subnet_public_cidr_block" {
    description = "subnet cidr block"
    type = string
}

variable "igw_tagName_group2_miko" {
    description = "internet gateway tag name for group2 miko"
    type = string
}