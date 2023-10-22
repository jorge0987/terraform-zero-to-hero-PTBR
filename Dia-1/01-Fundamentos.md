# Infraestrutura como Código (IaC)

Antes do advento da IaC, o gerenciamento da infraestrutura era normalmente um processo manual e demorado. Os administradores de sistema e equipes de operações tiveram que:

1. Configurar servidores manualmente: Servidores e outros componentes de infraestrutura eram frequentemente instalados e configurados manualmente, o que poderia levar a inconsistências e erros.

2. Falta de controle de versão: As configurações de infraestrutura normalmente não eram controladas por versão, dificultando o rastreamento de alterações ou a reversão para estados anteriores.

3. Muita documentação: as organizações dependiam muito da documentação para registrar as etapas e configurações necessárias para diferentes configurações de infraestrutura. Esta documentação pode ficar desatualizada rapidamente.

4. Automação Limitada: A automação estava limitada a scripts básicos, muitas vezes sem a robustez e a flexibilidade oferecidas pelas ferramentas IaC modernas.

5. Provisionamento lento: O provisionamento de novos recursos ou ambientes era um processo demorado que envolvia diversas etapas manuais, levando a atrasos na entrega do projeto.

A IaC aborda esses desafios fornecendo uma abordagem sistemática, automatizada e orientada por código para o gerenciamento de infraestrutura. Ferramentas IaC populares incluem Terraform, AWS CloudFormation, modelos do Azure Resource Manager e outros.

Essas ferramentas permitem que as organizações definam, implantem e gerenciem sua infraestrutura de maneira eficiente e consistente, facilitando a adaptação às necessidades dinâmicas de aplicativos e serviços modernos.

# Por que Terraform?

Existem vários motivos pelos quais o Terraform é usado em vez de outras ferramentas IaC, mas abaixo estão os principais motivos.

1. **Suporte multinuvem**: Terraform é conhecido por seu suporte multinuvem. Ele permite definir a infraestrutura de maneira independente da nuvem, o que significa que você pode usar o mesmo código de configuração para provisionar recursos em vários provedores de nuvem (AWS, Azure, Google Cloud, etc.) e até mesmo na infraestrutura local. Essa flexibilidade pode ser benéfica se sua organização usar vários provedores de nuvem ou planejar migrar entre eles.

2. **Grande Ecossistema**: O Terraform possui um vasto ecossistema de provedores e módulos contribuídos pela HashiCorp (a empresa por trás do Terraform) e pela comunidade. Isso significa que você pode encontrar módulos e configurações pré-construídos para uma ampla variedade de serviços e componentes de infraestrutura, economizando tempo e esforço na criação de configurações personalizadas.

3. **Sintaxe Declarativa**: O Terraform usa uma sintaxe declarativa, permitindo especificar o estado final desejado de sua infraestrutura. Isso torna mais fácil entender e manter seu código em comparação com linguagens de script imperativas.

4. **Gerenciamento de estado**: o Terraform mantém um arquivo de estado que rastreia o estado atual da sua infraestrutura. Este arquivo de estado ajuda o Terraform a entender as diferenças entre os estados desejado e real da sua infraestrutura, permitindo que ele tome decisões informadas ao aplicar alterações.

5. **Planejar e aplicar**: o fluxo de trabalho "planejar" e "aplicar" do Terraform permite visualizar as alterações antes de aplicá-las. Isso ajuda a evitar modificações inesperadas em sua infraestrutura e oferece uma oportunidade de revisar e aprovar alterações antes de serem implementadas.

6. **Suporte da comunidade**: O Terraform tem uma comunidade de usuários grande e ativa, o que significa que você pode encontrar respostas para perguntas comuns, dicas de solução de problemas e uma grande variedade de documentação e tutoriais online.

7. **Integração com outras ferramentas**: O Terraform pode ser integrado com outras ferramentas DevOps e de automação, como Docker, Kubernetes, Ansible e Jenkins, permitindo criar pipelines de automação abrangentes.

8. **Linguagem HCL**: O Terraform usa HashiCorp Configuration Language (HCL), que é projetada especificamente para definir infraestrutura. É legível e expressivo, facilitando o trabalho tanto para desenvolvedores quanto para operadores.