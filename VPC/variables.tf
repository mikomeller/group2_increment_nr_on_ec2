variable "public_subnet" {
  description = "The name of the public subnet"
  type        = string
}

variable "vpc_name" {
  description = "The name of the VPC"
  type        = string
}

variable "subnet_cidr_block" {
  description = "The CIDR block of the public subnet"
  type        = string
}

variable "vpc_cidr_block" {
  description = "The CIDR block of the VPC"
  type        = string
}