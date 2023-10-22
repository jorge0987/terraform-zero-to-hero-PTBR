# Funções integradas

Terraform é uma ferramenta de infraestrutura como código (IaC) que permite definir e provisionar recursos de infraestrutura de maneira declarativa. O Terraform fornece uma ampla variedade de funções integradas que você pode usar em seus arquivos de configuração (geralmente escritos em HashiCorp Configuration Language, ou HCL) para manipular e transformar dados. Essas funções ajudam você a executar diversas tarefas ao definir sua infraestrutura. Aqui estão algumas funções integradas comumente usadas no Terraform:

1. `concat(list1, list2, ...)`: Combina várias listas em uma única lista.

```hcl
variable "list1" {
  type    = list
  default = ["a", "b"]
}

variable "list2" {
  type    = list
  default = ["c", "d"]
}

output "combined_list" {
  value = concat(var.list1, var.list2)
}
```

2. `element(list, index)`: Retorna o elemento no índice especificado em uma lista.

```hcl
variable "my_list" {
  type    = list
  default = ["apple", "banana", "cherry"]
}

output "selected_element" {
  value = element(var.my_list, 1) # Returns "banana"
}
```

3. `length(list)`: Retorna o número de elementos em uma lista.

```hcl
variable "my_list" {
  type    = list
  default = ["apple", "banana", "cherry"]
}

output "list_length" {
  value = length(var.my_list) # Returns 3
}
```

4. `map(key, value)`: Cria um mapa a partir de uma lista de chaves e uma lista de valores.

```hcl
variable "keys" {
  type    = list
  default = ["name", "age"]
}

variable "values" {
  type    = list
  default = ["Alice", 30]
}

output "my_map" {
  value = map(var.keys, var.values) # Returns {"name" = "Alice", "age" = 30}
}
```

5. `lookup(map, key)`: Recupera o valor associado a uma chave específica em um mapa.

```hcl
variable "my_map" {
  type    = map(string)
  default = {"name" = "Alice", "age" = "30"}
}

output "value" {
  value = lookup(var.my_map, "name") # Returns "Alice"
}
```
6. `join(separator, list)`: Une os elementos de uma lista em uma única string usando o separador especificado.

```hcl
variable "my_list" {
  type    = list
  default = ["apple", "banana", "cherry"]
}

output "joined_string" {
  value = join(", ", var.my_list) # Returns "apple, banana, cherry"
}
```

Estes são apenas alguns exemplos das funções integradas disponíveis no Terraform. Você pode encontrar mais funções e documentação detalhada na documentação oficial do Terraform, que é atualizada regularmente para incluir novos recursos e melhorias.

https://developer.hashicorp.com/terraform/language/functions
