resource "aws_security_group" "public_sg" {
  name   = "public_sg"
  vpc_id = aws_vpc.main.id

  ingress {
    description = "HTTP from VPC"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "pub-sg-vpc"
  } 
  
}

resource "aws_security_group" "private_sg" {
  name        = "private_sg"
  description = "Allow internal traffic for private subnet"
  vpc_id      = aws_vpc.main.id

  # Inbound rules - only allow traffic from the public subnet
ingress {
    description      = "Allow traffic from public subnets"
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    security_groups  = [
      aws_security_group.public_sg.id
    ]
  }


  # Outbound rules - allow all outbound traffic
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "pct-sg-vpc"
  } 
}