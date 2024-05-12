# Curso de terraform do zero a produção!
Este curso foi desenvolvido por Abhishek Veeramalla, para estudo próprio estou traduzindo fazer fazendo algumas modificações para um melhor entendimento em portugues. Deixarei os links logo a baixo: 

Playlist do youtube:
https://www.youtube.com/@AbhishekVeeramalla/join

GitHub Repo:
https://github.com/iam-veeramalla/terraform-zero-to-hero

Documentação Terraform: 
https://developer.hashicorp.com/terraform/language

## Dia 1: Primeiros passos com o Terraform

#### Introdução ao Terraform e IaC

Nesta sessão, apresentaremos os conceitos fundamentais de Terraform e Infraestrutura como Código (IaC). Saiba por que o Terraform é crucial para o gerenciamento de infraestrutura e como o IaC agiliza o provisionamento.

#### Instalando o Terraform no MacOS, Linux e Windows

Suje a mão instalando o Terraform no MacOS, Linux e Windows. Iremos guiá-lo através do processo com instruções e comandos claros.

#### Configurando o Terraform para AWS

Mergulhe na integração da AWS com o Terraform. Você aprenderá como configurar suas credenciais da AWS e configurar o provedor da AWS no Terraform para iniciar o provisionamento de recursos.

#### Escrevendo seu primeiro código Terraform

Comece a escrever código Terraform real com um exemplo simples. Aprenda sobre a estrutura básica de um arquivo de configuração do Terraform e como definir recursos usando a linguagem HCL.

### Ciclo de vida do Terraform

Entenda o ciclo de vida do terraform. O que é terraform `init`, `plan` e `apply`.

#### Iniciando uma instância EC2

Aumente suas habilidades provisionando uma instância EC2 na AWS usando Terraform. Explore atributos como tipo de instância, AMI e tags para personalizar sua instância.

#### Noções básicas do estado do Terraform

Entenda a importância dos arquivos de estado do Terraform. Saiba mais sobre os estados desejados e atuais e como o Terraform gerencia esses estados para garantir a consistência da infraestrutura.

## Dia 2: Configuração avançada do Terraform

#### Noções básicas sobre provedores e recursos

Aprofunde seu conhecimento sobre fornecedores e recursos. Explore a função de diferentes provedores para diversas plataformas de nuvem e entenda como os recursos definem os componentes da infraestrutura.

#### Variáveis e saídas no Terraform

Descubra o poder das variáveis para configurações dinâmicas. Aprenda como definir, declarar e utilizar variáveis de forma eficaz. Explore resultados para recuperar e exibir informações essenciais.

#### Expressões e funções condicionais

Eleve suas configurações com expressões condicionais, adicionando lógica ao seu código. Apresentaremos as funções integradas do Terraform para tarefas como manipulação de strings e cálculos.

#### Depuração e formatação de arquivos Terraform

Domine a arte de depurar configurações do Terraform. Além disso, saiba por que a formatação adequada com o terraform fmt é crucial.

## Dia 3: Construindo Infraestrutura Reutilizável com Módulos

#### Criando infraestrutura modular com módulos Terraform

Libere o potencial de reutilização com módulos Terraform. Entenda como os módulos permitem criar componentes de infraestrutura compartilháveis e organizados.

#### Valores locais e fontes de dados

Simplifique expressões complexas usando valores locais. Mergulhe nas fontes de dados e aprenda como buscar dados de recursos existentes ou sistemas externos, aumentando a flexibilidade das suas configurações.

#### Usando variáveis e entradas com módulos

Explore a versatilidade de usar variáveis dentro de módulos para personalizar seu comportamento. Aprenda como os insumos funcionam nos módulos e os benefícios que eles oferecem.

#### Aproveitando os resultados dos módulos

Utilize as saídas do módulo para acessar informações críticas ou propagar dados para sua configuração raiz. Aprenda como tornar seus módulos mais informativos e úteis.

#### Explorando o Registro Terraform para Módulos

Embarque em uma jornada pelo Terraform Registry. Descubra módulos pré-construídos contribuídos pela comunidade e aprenda como incorporá-los em suas próprias configurações.

## Dia 4: Colaboração e Gestão do Estado

#### Colaborando com Git e controle de versão

Colabore de forma eficaz usando Git e controle de versão. Aprenda comandos fundamentais do Git, como clonar, extrair e enviar repositórios para aprimorar o trabalho em equipe.

#### Tratamento de dados confidenciais e .gitignore

Enfrente os desafios de segurança associados a dados confidenciais no controle de versão. Explore a importância de .gitignore para impedir que arquivos confidenciais sejam confirmados.

#### Introdução aos back-ends do Terraform

Descubra a função dos back-ends do Terraform no armazenamento de estado remoto. Saiba por que eles são essenciais para manter o estado e as configurações da infraestrutura.

#### Implementando back-end S3 para armazenamento de estado

Obtenha experiência prática configurando um bucket S3 como back-end para armazenamento de estado remoto. Entenda como essa configuração melhora a colaboração e o gerenciamento de estado.

#### Bloqueio de estado com DynamoDB

Mergulhe no bloqueio de estado e na prevenção de atualizações simultâneas. Implemente o bloqueio de estado usando DynamoDB como mecanismo de back-end, garantindo a consistência do estado.

## Dia 5: Provisionamento e Provisionadores

#### Noções básicas sobre provisionadores no Terraform

Aprenda sobre provisionadores, mecanismos para executar ações em recursos durante a criação e destruição. Entenda como eles facilitam a customização.

#### Provisionadores de execução remota e execução local

Diferencie os provisionadores de execução remota e de execução local. Explore como o remote-exec provisiona ações em servidores remotos, enquanto o local-exec executa tarefas localmente.

#### Aplicando Provisionadores na Criação e Destruição

Descubra quando usar provisionadores durante a criação ou destruição de recursos. Configure provisionadores em blocos de recursos para executar ações específicas.

#### Tratamento de falhas para provisionadores

Obtenha insights sobre como lidar com falhas de provisionador. Saiba mais sobre mecanismos de repetição, tempos limite e o atributo on_failure para controlar o comportamento do provisionador em caso de falha.

## Dia 6: Gerenciando Ambientes com Espaços de Trabalho

#### Introdução aos espaços de trabalho do Terraform

Compreender o conceito de espaços de trabalho e o seu papel na gestão de diferentes ambientes. Saiba como os espaços de trabalho ajudam no isolamento de configurações.

#### Criando e alternando entre espaços de trabalho

Aprenda como criar novos espaços de trabalho e alternar entre eles usando comandos de espaço de trabalho do terraform. Compreender o seu significado na gestão ambiental.

#### Usando espaços de trabalho para gerenciamento de ambiente

Saiba mais sobre como os espaços de trabalho simplificam o gerenciamento do ambiente. Compreenda seus benefícios na manutenção de arquivos de estado separados para diversas configurações.

## Dia 7: Segurança e Tópicos Avançados

#### Visão geral do cofre HashiCorp

Obtenha uma visão geral do HashiCorp Vault, uma ferramenta poderosa para gerenciamento de segredos e proteção de dados. Entenda sua importância na manutenção de configurações seguras.

#### Integrando o Terraform com o Vault para segredos

Aprenda como integrar o Terraform ao Vault para gerenciar dados confidenciais com segurança. Descubra como o Vault pode ser usado para armazenar e distribuir segredos nas configurações.
