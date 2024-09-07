variable "cidr_block" {
    description = "CIDR value of the VPC"
    default = "10.0.0.0/16"
  
}

variable "pub_subnet_1_CIDR" {
    default = "10.0.1.0/24"
  
}
variable "pvt_subnet_1_CIDR" {
    default = "10.0.0.0/24"
  
}
variable "pub_subnet_2_CIDR" {
    default = "10.0.2.0/24"
  
}
variable "pvt_subnet_2_CIDR" {
    default = "10.0.3.0/24"
  
}

variable "instance_type" {
    default = "t2.micro"
  
}
variable "ami" {
    default = "ami-0261755bbcb8c4a84"
  
}
