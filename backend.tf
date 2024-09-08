terraform {
  backend "s3" {
    bucket = "niveshsunny-tfstate"
    region = "us-east-1"
    key = "nivesh/terraform.tfstate"
  }
}

# resource "aws_dynamodb_table" "terraform_lock" {
#   name           = "terraform-lock"
#   billing_mode   = "PAY_PER_REQUEST"
#   hash_key       = "LockID"

#   attribute {
#     name = "LockID"
#     type = "S"
#   }
# }