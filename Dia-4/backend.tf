terraform {
  backend "s3" {
    bucket         = "jorge-s3-demo-xyz" # mude isso
    key            = "jorge/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-dynamodb-table"
  }
}