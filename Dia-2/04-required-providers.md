# Configuração do provedor

O bloco require_providers no Terraform é usado para declarar e especificar as configurações de provedor necessárias para seu módulo ou configuração do Terraform. Ele permite que você especifique o nome do provedor, a origem e as restrições de versão.

```
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 2.0, < 3.0"
    }
  }
}
```