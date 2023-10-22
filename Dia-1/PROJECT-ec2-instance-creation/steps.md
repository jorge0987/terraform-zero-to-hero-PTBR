# Overview of steps
Documentação Oficial: https://developer.hashicorp.com/terraform/language/state

Crie um diretório para seu projeto Terraform e crie um arquivo de configuração do Terraform (geralmente denominado `main.tf`) nesse diretório. Neste arquivo, você define o provedor AWS e os recursos que deseja criar. Aqui está um exemplo básico:

```hcl
    provedor "aws" {
      região = "us-east-1" # Defina a região AWS desejada
    }

    recurso "aws_instance" "exemplo" {
      ami = "ami-0c55b159cbfafe1f0" # Especifique um ID de AMI apropriado
      instance_type = "t2.micro"
    }
```

## Inicializar o Terraform**

Em seu terminal, navegue até o diretório que contém os arquivos de configuração do Terraform e execute:

```
terraform init
```

Este comando inicializa o diretório de trabalho do Terraform, baixando todos os plug-ins de provedor necessários.

## Aplicar a configuração

Execute o seguinte comando para criar os recursos da AWS definidos na configuração do Terraform:


```
terraform apply
```

O Terraform exibirá um plano das mudanças que fará. Revise o plano e digite “sim” quando solicitado a aplicá-lo.

## Verifique os recursos

Depois que o Terraform concluir o processo de provisionamento, você poderá verificar os recursos criados no AWS Management Console ou usando comandos da AWS CLI.

## Destrua Recursos

Se quiser remover os recursos criados pelo Terraform, você pode usar o seguinte comando:

```
terraform destroy

```

Tenha cuidado ao usar `terraform destroy`, pois isso excluirá recursos conforme especificado na configuração do Terraform.