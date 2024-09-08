resource "aws_vpc" "main" {
  cidr_block = var.cidr_block
  tags = {
    "Name" = "my-vpc"
  }
}

resource "aws_key_pair" "example" {
    key_name = "vpc_key"
    public_key = file("~/.ssh/id_rsa.pub")  
  
}


resource "aws_eip" "nat_eip" {
  domain = "vpc"
}

resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat_eip.id
  subnet_id     = aws_subnet.public_subnet_1.id
}

resource "aws_internet_gateway" "vpc_igw" {
    vpc_id = aws_vpc.main.id 
}

resource "aws_route_table" "public_rt" {
    vpc_id = aws_vpc.main.id
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.vpc_igw.id
    }
    tags = {
    Name = "PublicSrt"
    Environment = "Development"
  }
}

resource "aws_route_table_association" "pub-rt_1" {
    subnet_id = aws_subnet.public_subnet_1.id
    route_table_id = aws_route_table.public_rt.id
}
resource "aws_route_table_association" "pub-rt_2" {
    subnet_id = aws_subnet.public_subnet_2.id
    route_table_id = aws_route_table.public_rt.id
}


resource "aws_route_table" "pvt_rt" {
    vpc_id = aws_vpc.main.id
    route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat.id
  }
  tags = {
    Name = "Pvtrt"
    Environment = "Development"
  }
}

resource "aws_route_table_association" "pvt-rt_1" {
    subnet_id = aws_subnet.private_subnet_1.id
    route_table_id = aws_route_table.pvt_rt.id
}
resource "aws_route_table_association" "pvt-rt_2" {
    subnet_id = aws_subnet.private_subnet_2.id
    route_table_id = aws_route_table.pvt_rt.id
}



