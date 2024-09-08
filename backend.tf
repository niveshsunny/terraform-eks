terraform {
  backend "s3" {
    bucket = "niveshsunny-tfstate"
    region = "us-east-1"
    key = "nivesh/terraform.tfstate"
  }
}