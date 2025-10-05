# AWS Pipelines Examples

Este repositório contém exemplos de **pipelines de dados na AWS**, incluindo pipelines **batch**, **event-driven** e **verificações de qualidade de dados**. O objetivo é demonstrar o ciclo completo de dados, desde a ingestão até transformações, validações e disponibilização para consumo.

## Estrutura do Repositório

- **batch-pipeline**  
  Pipeline batch com jobs PySpark, transformação SOR → SOT → SPEC, orquestração e testes unitários.

- **event-driven-pipeline**  
  Pipelines orientados a eventos, utilizando AWS Lambda, Kinesis, SNS e testes de fluxo de eventos.

- **data-quality-checks**  
  Verificações de qualidade de dados em diferentes camadas, com expectativas de schema, checagem de valores nulos e testes automatizados.

- **shared-modules**  
  Módulos utilitários compartilhados, como funções PySpark e clientes AWS (boto3).

- **iac**  
  Scripts de **Infrastructure as Code** para provisionamento de recursos AWS.

- **ci-cd**  
  Configurações de **GitHub Actions** para integração contínua e deploy de pipelines.

- **docs**  
  Diagramas de arquitetura, documentação e fluxos de dados.

## Objetivos

1. Demonstrar o ciclo de vida completo de pipelines de dados.
2. Exemplificar o uso de AWS Glue, Step Functions, Lambda, Kinesis, S3 e Athena.
3. Construir pipelines **testáveis**, **escaláveis** e com **verificação de qualidade de dados**.
4. Criar um portfólio de referência com boas práticas de engenharia de dados.

## Como usar

1. Clone este repositório:  
   git clone https://github.com/Leosoares96/aws-pipelines-examples.git
2. Explore os pipelines e testes em cada módulo.
3. Consulte os arquivos README individuais em cada pasta para detalhes de execução.
