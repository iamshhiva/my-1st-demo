resource "aws_vpc" "vpc1" {
  cidr_block = var.cidr_block_vpc
  assign_generated_ipv6_cidr_block = true
}

resource "aws_subnet" "subnet1" {
  vpc_id     = aws_vpc.vpc1.id
  cidr_block = var.cidr_block_i_can_do

  tags = {
    Name = "subnet1"
  }
}
resource "aws_internet_gateway" "igw1" {
  vpc_id = aws_vpc.vpc1.id

  tags = {
    Name = "igw1"
  }
}
resource "aws_egress_only_internet_gateway" "eigw1" {
  vpc_id = aws_vpc.vpc1.id

  tags = {
    Name = "eigw1"
  }
}
