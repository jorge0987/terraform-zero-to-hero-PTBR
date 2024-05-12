provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "jorge_instance" {
  instance_type = "t2.micro"
  ami = "ami-053b0d53c279acc90" # MUDE ISSO
  subnet_id = "subnet-06870f10d9e4704c9" # MUDE ISSO
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "jorge-s3-demo-xyz" # MUDE ISSO
}

resource "aws_dynamodb_table" "terraform_lock" {
  name           = "terraform-lock"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}