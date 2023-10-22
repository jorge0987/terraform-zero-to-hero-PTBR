# Provedores

Um provedor no Terraform é um plugin que permite a interação com uma API.
Isso inclui provedores de nuvem, provedores de SaaS e outras APIs. Os provedores são especificados no código de configuração do Terraform. Eles informam ao Terraform com quais serviços ele precisa interagir.

Por exemplo, se quiser usar o Terraform para criar uma máquina virtual na AWS, você precisará usar o provedor aws. O provedor AWS fornece um conjunto de recursos que o Terraform pode usar para criar, gerenciar e destruir máquinas virtuais na AWS.

Aqui está um exemplo de como usar o provedor aws em uma configuração do Terraform:

```hcl
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami = "ami-0123456789abcdef0" # Altere a AMI
  instance_type = "t2.micro"
}
```
Neste exemplo, estamos primeiro definindo o provedor aws. Estamos especificando a região como us-east-1. Então, estamos definindo o recurso `aws_instance`. Estamos especificando o `AMI ID` e o `tipo de instância`.

Quando o Terraform for executado, ele primeiro instalará o provedor aws. Em seguida, ele usará o provedor AWS para criar a máquina virtual.

Aqui estão alguns outros exemplos de fornecedores:

- `azurerm` - para Azure
- `google` - para Google Cloud Platform
- `kubernetes` - para Kubernetes
- `openstack` - para OpenStack
- `vsphere` - para VMware vSphere

Existem muitos outros provedores disponíveis e novos são adicionados o tempo todo.

Os provedores são uma parte essencial do Terraform. Eles permitem que o Terraform interaja com uma ampla variedade de provedores de nuvem e outras APIs. Isso torna o Terraform uma ferramenta muito versátil que pode ser usada para gerenciar uma ampla variedade de infraestruturas.


## Diferentes maneiras de configurar provedores no terraform

Existem três maneiras principais de configurar provedores no Terraform:

### No módulo raiz

Esta é a forma mais comum de configurar provedores. O bloco de configuração do provedor é colocado no módulo raiz da configuração do Terraform. Isso disponibiliza a configuração do provedor para todos os recursos na configuração.

```hcl
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami = "ami-0123456789abcdef0"
  instance_type = "t2.micro"
}
```

### Em um módulo filho

Você também pode configurar provedores em um módulo filho. Isto é útil se você quiser reutilizar a mesma configuração do provedor em vários recursos.

```hcl
module "aws_vpc" {
  source = "./aws_vpc"
  providers = {
    aws = aws.us-west-2
  }
}

resource "aws_instance" "example" {
  ami = "ami-0123456789abcdef0"
  instance_type = "t2.micro"
  depends_on = [module.aws_vpc]
}
```

### No bloco require_providers

Você também pode configurar provedores no bloco require_providers. Isso é útil se você quiser ter certeza de que uma versão específica do provedor será usada.

```hcl
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 3.79"
    }
  }
}

resource "aws_instance" "example" {
  ami = "ami-0123456789abcdef0"
  instance_type = "t2.micro"
}
```

A melhor forma de configurar provedores depende de suas necessidades específicas. Se você estiver usando apenas um único provedor, configurá-lo no módulo raiz é a opção mais simples. Se você estiver usando vários provedores ou quiser reutilizar a mesma configuração de provedor em vários recursos, configurá-lo em um módulo filho é uma boa opção. E se você quiser ter certeza de que uma versão específica do provedor será usada, configurá-lo no bloco require_providers é a melhor opção.