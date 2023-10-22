# Começando

Para começar a usar o Terraform, é importante compreender alguns conceitos e terminologias importantes. Aqui estão alguns termos e explicações fundamentais.

1. **Provedor**: um provedor é um plug-in para Terraform que define e gerencia recursos para uma plataforma específica de nuvem ou infraestrutura.
Exemplos de provedores incluem AWS, Azure, Google Cloud e muitos outros.
Você configura provedores em seu código Terraform para interagir com a plataforma de infraestrutura desejada.

2. **Recurso**: um recurso é um componente de infraestrutura específico que você deseja criar e gerenciar usando o Terraform. Os recursos podem incluir máquinas virtuais, bancos de dados, depósitos de armazenamento, componentes de rede e muito mais. Cada recurso possui um tipo e parâmetros de configuração que você define em seu código Terraform.

3. **Módulo**: Um módulo é uma unidade reutilizável e encapsulada de código Terraform. Os módulos permitem empacotar configurações de infraestrutura, facilitando sua manutenção, compartilhamento e reutilização em diferentes partes de sua infraestrutura. Os módulos podem ser suas próprias criações ou vir do Terraform Registry, que hospeda módulos contribuídos pela comunidade.

4. **Arquivo de configuração**: O Terraform usa arquivos de configuração (geralmente com uma extensão `.tf`) para definir o estado desejado da infraestrutura. Esses arquivos especificam provedores, recursos, variáveis e outras configurações. O arquivo de configuração primário geralmente é denominado `main.tf`, mas você também pode usar vários arquivos de configuração.

5. **Variável**: Variáveis no Terraform são espaços reservados para valores que podem ser passados para suas configurações. Eles tornam seu código mais flexível e reutilizável, permitindo que você defina valores fora do seu código e os transmita ao aplicar a configuração do Terraform.

6. **Saída**: As saídas são valores gerados pelo Terraform após a criação ou atualização da infraestrutura. As saídas normalmente são usadas para exibir informações ou fornecer valores para outras partes da pilha de infraestrutura.

7. **Arquivo de estado**: O Terraform mantém um arquivo de estado (geralmente denominado `terraform.tfstate`) que monitora o estado atual de sua infraestrutura. Este arquivo é crucial para o Terraform entender quais recursos foram criados e quais alterações precisam ser feitas durante as atualizações.

8. **Plano**: um plano Terraform é uma prévia das mudanças que o Terraform fará em sua infraestrutura. Quando você executa o `terraform plan`, o Terraform analisa sua configuração e estado atual e, em seguida, gera um plano detalhando quais ações serão executadas durante a etapa de `aplicação`.

9. **Aplicar**: O comando `terraform apply` é usado para executar as alterações especificadas no plano. Ele cria, atualiza ou destrói recursos com base na configuração do Terraform.

10. **Espaço de trabalho**: Os espaços de trabalho no Terraform são uma forma de gerenciar vários ambientes (por exemplo, desenvolvimento, preparação, produção) com configurações e arquivos de estado separados. Os espaços de trabalho ajudam a manter as configurações da infraestrutura isoladas e organizadas.

11. **Back-end remoto**: um back-end remoto é um local de armazenamento para seus arquivos de estado do Terraform que não é armazenado localmente. As opções populares para back-ends remotos incluem Amazon S3, Azure Blob Storage ou HashiCorp Terraform Cloud. Os back-ends remotos melhoram a colaboração e fornecem melhor segurança e confiabilidade para seus arquivos de estado.

Estes são alguns dos termos essenciais que você encontrará ao trabalhar com o Terraform. Ao começar a usar o Terraform para provisionamento e gerenciamento de infraestrutura, você se familiarizará mais com esses conceitos e como eles se encaixam em seus fluxos de trabalho de IaC.