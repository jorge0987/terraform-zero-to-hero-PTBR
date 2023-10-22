# Conditional Expressions
Expressões condicionais no Terraform são usadas para definir lógica condicional em suas configurações. Eles permitem que você tome decisões ou defina valores com base em condições. Expressões condicionais são normalmente usadas para controlar se os recursos são criados ou configurados com base na avaliação de uma condição.

A sintaxe para uma expressão condicional no Terraform é:

```hcl
condition ? true_val : false_val
```
- `condição` é uma expressão avaliada como `true` ou `false`.
- `true_val` é o valor retornado se a condição for `true`.
- `false_val` é o valor retornado se a condição for `false`.

Aqui estão alguns casos de uso comuns e exemplos de como usar expressões condicionais no Terraform:

## Exemplo de criação de recurso condicional
```hcl
resource "aws_instance" "example" {
  count = var.create_instance ? 1 : 0

  ami           = "ami-XXXXXXXXXXXXXXXXX"
  instance_type = "t2.micro"
}
```

Neste exemplo, o atributo `count` do recurso `aws_instance` usa uma expressão condicional. Se a variável `create_instance` for `true`, ela cria uma instância EC2. Se `create_instance` for `false`, ele cria zero instâncias, ignorando efetivamente a criação de recursos.

# Exemplo de atribuição de variável condicional

```hcl
variable "environment" {
  description = "Environment type"
  type        = string
  default     = "development"
}

variable "production_subnet_cidr" {
  description = "CIDR block for production subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "development_subnet_cidr" {
  description = "CIDR block for development subnet"
  type        = string
  default     = "10.0.2.0/24"
}

resource "aws_security_group" "example" {
  name        = "example-sg"
  description = "Example security group"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.environment == "production" ? [var.production_subnet_cidr] : [var.development_subnet_cidr]
  }
}

```

Neste exemplo, o bloco `locals` usa uma expressão condicional para atribuir um valor à variável local `subnet_cidr` com base no valor da variável `environment`. Se `ambiente` estiver definido como `"produção"`, ele usa a variável `produção_subnet_cidr`; caso contrário, ele usa a variável `development_subnet_cidr`.

## Configuração de recursos condicionais

```hcl
resource "aws_security_group" "example" {
  name = "example-sg"
  description = "Example security group"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.enable_ssh ? ["0.0.0.0/0"] : []
  }
}
```

Neste exemplo, o bloco `ingress` dentro do recurso `aws_security_group` usa uma expressão condicional para controlar se o acesso SSH é permitido. Se `enable_ssh` for `true`, permite tráfego SSH de qualquer origem (`"0.0.0.0/0"`); caso contrário, não permitirá tráfego de entrada.

As expressões condicionais no Terraform fornecem uma maneira poderosa de tomar decisões e personalizar suas implantações de infraestrutura com base em diversas condições e variáveis. Eles melhoram a flexibilidade e a capacidade de reutilização das configurações do Terraform.