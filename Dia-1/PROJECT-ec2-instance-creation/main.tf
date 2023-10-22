provider "aws" {
    region = "us-east-1"  # Defina a região AWS desejada
}

resource "aws_instance" "example" {
    ami           = "ami-0c55b159cbfafe1f0" # Especifique um ID de AMI apropriado
    instance_type = "t2.micro"
}