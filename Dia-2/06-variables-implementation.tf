# Demonstração de variáveis

```hcl

# Defina uma variável de entrada para o tipo de instância EC2
variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

# Defina uma variável de entrada para o ID AMI da instância EC2
variable "ami_id" {
  description = "EC2 AMI ID"
  type        = string
}

# Configure o provedor AWS usando as variáveis de entrada
provider "aws" {
  region      = "us-east-1"
}

# Crie uma instância EC2 usando as variáveis de entrada
resource "aws_instance" "example_instance" {
  ami           = var.ami_id
  instance_type = var.instance_type
}

# Defina uma variável de saída para expor o endereço IP público da instância EC2
output "public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.example_instance.public_ip
}

```