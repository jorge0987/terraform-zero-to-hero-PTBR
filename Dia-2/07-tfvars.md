# Terraform tfvars

No Terraform, arquivos `.tfvars` (normalmente com uma extensão `.tfvars`) são usados para definir valores específicos para variáveis de entrada definidas em sua configuração do Terraform.

Eles permitem separar valores de configuração do seu código Terraform, facilitando o gerenciamento de diferentes configurações para diferentes ambientes (por exemplo, desenvolvimento, preparação, produção) ou o armazenamento de informações confidenciais sem expô-las em seu código.

Aqui está o propósito dos arquivos `.tfvars`:

1. **Separação da configuração do código**: As variáveis de entrada no Terraform devem ser configuráveis para que você possa usar o mesmo código com diferentes conjuntos de valores. Em vez de codificar esses valores diretamente em seus arquivos `.tf`, você usa arquivos `.tfvars` para manter a configuração separada. Isso facilita a manutenção e o gerenciamento de configurações para diferentes ambientes.

2. **Informações confidenciais**: arquivos `.tfvars` são um local comum para armazenar informações confidenciais, como chaves de API, credenciais de acesso ou segredos. Esses valores confidenciais podem ser mantidos fora do sistema de controle de versão, aumentando a segurança e evitando a exposição acidental de segredos na sua base de código.

3. **Reutilização**: Ao manter os valores de configuração em arquivos `.tfvars` separados, você pode reutilizar o mesmo código Terraform com diferentes conjuntos de variáveis. Isso é útil para criar infraestrutura para diferentes projetos ou ambientes usando um único conjunto de módulos Terraform.

4. **Colaboração**: Ao trabalhar em equipe, cada membro da equipe pode ter seu próprio arquivo `.tfvars` para definir valores específicos para seu ambiente ou fluxo de trabalho. Isso evita conflitos na base de código quando várias pessoas estão trabalhando no mesmo projeto Terraform.

## Resumo

Veja como você normalmente usa arquivos `.tfvars`

1. Defina suas variáveis de entrada em seu código Terraform (por exemplo, em um arquivo `variables.tf`).

2. Crie um ou mais arquivos `.tfvars`, cada um contendo valores específicos para essas variáveis de entrada.

3. Ao executar comandos do Terraform (por exemplo, terraform apply, terraform plan), você pode especificar quais arquivos .tfvars usar com a opção -var-file:

```
terraform apply -var-file=dev.tfvars
```

Ao usar arquivos `.tfvars`, você pode manter seu código Terraform mais genérico e flexível enquanto adapta as configurações para diferentes cenários e ambientes.