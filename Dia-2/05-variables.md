# Variáveis

Variáveis de entrada e saída no Terraform são essenciais para parametrizar e compartilhar valores dentro de suas configurações e módulos do Terraform. Eles permitem que você torne suas configurações mais dinâmicas, reutilizáveis e flexíveis.

## Variáveis de entrada

Variáveis de entrada são usadas para parametrizar suas configurações do Terraform. Eles permitem que você passe valores externos para seus módulos ou configurações. As variáveis de entrada podem ser definidas dentro de um módulo ou no nível raiz da sua configuração. Veja como você define uma variável de entrada:

```hcl
variable "example_var" {
  description = "An example input variable"
  type        = string
  default     = "default_value"
}
```
Neste exemplo:

- `variable` é usado para declarar uma variável de entrada chamada `example_var`.
- `description` fornece uma descrição legível da variável.
- `type` especifica o tipo de dados da variável (por exemplo, `string`, `number`, `list`, `map`, etc.).
- `default` fornece um valor padrão para a variável, que é opcional.

Você pode então usar a variável de entrada em seu módulo ou configuração assim:

```hcl
resource "example_resource" "example" {
  name = var.example_var
  # other resource configurations
}
```
Você faz referência à variável de entrada usando `var.example_var`.

## Variáveis de saída

As variáveis de saída permitem expor valores do seu módulo ou configuração, disponibilizando-os para uso em outras partes da configuração do Terraform. Veja como você define uma variável de saída:

```hcl
output "example_output" {
  description = "An example output variable"
  value       = resource.example_resource.example.id
}
```
Neste exemplo:

- `output` é usado para declarar uma variável de saída chamada `example_output`.
- `description` fornece uma descrição da variável de saída.
- `value` especifica o valor que você deseja expor como uma variável de saída. Este valor pode ser um atributo de recurso, um valor computado ou qualquer outra expressão.

Você pode referenciar variáveis de saída no módulo raiz ou em outros módulos usando a sintaxe `module.module_name.output_name`, onde `module_name` é o nome do módulo que contém a variável de saída.

Por exemplo, se você tiver uma variável de saída chamada `example_output` em um módulo chamado `example_module`, você pode acessá-la no módulo raiz assim:

```hcl
output "root_output" {
  value = module.example_module.example_output
}
```

Isso permite que você compartilhe dados e valores entre diferentes partes da configuração do Terraform e crie configurações de infraestrutura como código mais modulares e sustentáveis.