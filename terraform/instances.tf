# resource "aws_instance" "public_instance" {

#   ami                    = var.ami
#   instance_type          = var.instance_type
#   key_name      = aws_key_pair.example.key_name
#   vpc_security_group_ids = [aws_security_group.public_sg.id]
#   subnet_id              = aws_subnet.public_subnet_1.id
  
#   tags = {
#     Name = "Publicinstance"
#     Environment = "Development"
#   }
# }

# resource "aws_instance" "private_instance" {

#   ami                    = var.ami
#   instance_type          = var.instance_type
#   key_name = "keypair"
#   vpc_security_group_ids = [aws_security_group.private_sg.id]
#   subnet_id              = aws_subnet.private_subnet_1.id
#   tags = {
#     Name = "Privateinstance"
#     Environment = "Development"
#   }
# }
# testing git 
