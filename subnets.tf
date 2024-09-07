resource "aws_subnet" "public_subnet_1" {
    vpc_id = aws_vpc.main.id
    map_public_ip_on_launch = true
    cidr_block = var.pub_subnet_1_CIDR
    availability_zone = "us-east-1a"
    tags = {
    Name = "PublicSubnet_1a"
    Environment = "Development"
  }
  
}

resource "aws_subnet" "public_subnet_2" {
    vpc_id = aws_vpc.main.id
    map_public_ip_on_launch = true
    cidr_block = var.pub_subnet_2_CIDR
    availability_zone = "us-east-1b"
    tags = {
    Name = "PublicSubnet_2b"
    Environment = "Development"
  }
  
}

resource "aws_subnet" "private_subnet_1" {
    vpc_id = aws_vpc.main.id
    map_public_ip_on_launch = false
    cidr_block = var.pvt_subnet_1_CIDR
    availability_zone = "us-east-1a"
    tags = {
    Name = "PrivateSubnet_1a"
    Environment = "Development"
  }
}

resource "aws_subnet" "private_subnet_2" {
    vpc_id = aws_vpc.main.id
    map_public_ip_on_launch = false
    cidr_block = var.pvt_subnet_2_CIDR
    availability_zone = "us-east-1b"
    tags = {
    Name = "PrivateSubnet_2b"
    Environment = "Development"
  }
}
