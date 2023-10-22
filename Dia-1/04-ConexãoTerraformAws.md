# Configurar o Terraform para AWS

Para configurar as credenciais da AWS e configurar o Terraform para funcionar com a AWS, você precisará seguir estas etapas:

1. **Instale AWS CLI (interface de linha de comando)**:

Certifique-se de ter o AWS CLI instalado em sua máquina. Você pode fazer download e instalá-lo na [página de download da AWS CLI](https://aws.amazon.com/cli/).

2. **Crie um usuário AWS IAM**:

Para interagir com a AWS de forma programática, você deve criar um usuário IAM (Identity and Access Management) com permissões apropriadas. Veja como criar um:

a. Faça login no AWS Management Console com uma conta que tenha privilégios administrativos.

b. Navegue até o serviço IAM.

c. Clique em “Usuários” no painel de navegação esquerdo e clique em “Adicionar usuário”.

- Escolha um nome de usuário, selecione “Acesso programático” como tipo de acesso e clique em “Avançar: Permissões”.

- Anexe políticas a este usuário com base em seus requisitos. No mínimo, você deve anexar a política "AmazonEC2FullAccess" para operações básicas do EC2. Se você precisar de acesso a outros serviços da AWS, anexe as políticas relevantes adequadamente.

- Revise a configuração do usuário e crie o usuário. Certifique-se de salvar o ID da chave de acesso e a chave de acesso secreta que são exibidas após a criação do usuário; você precisará deles para o Terraform.

3. **Configurar credenciais da AWS CLI**:

Use a AWS CLI para configurar suas credenciais. Abra um terminal e execute:

```
aws configure
```

Ele solicitará que você insira seu ID de chave de acesso da AWS, chave de acesso secreta, região padrão e formato de saída padrão. Insira as credenciais que você obteve na etapa anterior.
