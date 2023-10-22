# Vários provedores

Você pode usar vários provedores em um único projeto do Terraform. Por exemplo,


1. Crie um arquivo provedores.tf no diretório raiz do seu projeto Terraform.
2. No arquivo provedores.tf, defina os provedores AWS e Azure. Por exemplo:


```
provider "aws" {
  region = "us-east-1"
}

provider "azurerm" {
  subscription_id = "your-azure-subscription-id"
  client_id = "your-azure-client-id"
  client_secret = "your-azure-client-secret"
  tenant_id = "your-azure-tenant-id"
}
```

3. Em seus outros arquivos de configuração do Terraform, você pode usar os provedores aws e azurerm para criar recursos no AWS e no Azure, respectivamente,

```
resource "aws_instance" "example" {
  ami = "ami-0123456789abcdef0"
  instance_type = "t2.micro"
}

resource "azurerm_virtual_machine" "example" {
  name = "example-vm"
  location = "eastus"
  size = "Standard_A1"
}
```

