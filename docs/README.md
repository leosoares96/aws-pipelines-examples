# Setup Inicial

Este guia descreve os passos necessários para preparar seu ambiente e executar os exemplos de pipelines de dados na AWS.

## Pré-requisitos

Antes de executar os exemplos, é necessário instalar as seguintes ferramentas:

1. **AWS CLI**

   - Permite autenticar e interagir com a AWS.
   - Instalação: [https://aws.amazon.com/cli/](https://aws.amazon.com/cli/)

2. **Terraform**

   - Ferramenta de Infrastructure as Code (IaC) para provisionamento de recursos na AWS.
   - Instalação: [https://developer.hashicorp.com/terraform/downloads](https://developer.hashicorp.com/terraform/downloads)

3. **Python 3.x** (opcional, caso queira executar jobs PySpark localmente)

## Configuração de Credenciais AWS

Configure suas credenciais AWS para que o Terraform e outros scripts possam autenticar:

```bash
 aws configure
```

Informe os seguintes dados quando solicitado:

- **AWS Access Key ID**
- **AWS Secret Access Key**
- **Default region name** (ex: `us-east-1` ou `sa-east-1`)
- **Default output format** (opcional, ex: `json`)

Para verificar se as credenciais estão corretas:

```bash
 aws sts get-caller-identity
```

A saída deve mostrar seu **UserId**, **Account** e **ARN**, confirmando que a autenticação foi bem-sucedida.

## Criando recursos com Terraform

1. Navegue até a pasta do projeto onde está o arquivo Terraform (`.tf`) .

2. Inicialize o Terraform:

```bash
 terraform init
```

3. Planeje a criação do bucket:

```bash
terraform plan -var-file="terraform.tfvars"
```

4. Aplique o plano para criar o bucket:

```bash
terraform apply -var-file="terraform.tfvars"
```

5. Para reutilizar o bucket em outros módulos, configure o `output` no Terraform e consulte:

```bash
 terraform output
```

## Estrutura do Projeto

- **batch-pipeline**: Pipeline batch com jobs PySpark, transformação SOR → SOT → SPEC, orquestração e testes unitários.
- **event-driven-pipeline**: Pipelines orientados a eventos, utilizando AWS Lambda, Kinesis, SNS e testes de fluxo de eventos.
- **data-quality-checks**: Verificações de qualidade de dados em diferentes camadas, com expectativas de schema, checagem de valores nulos e testes automatizados.
- **shared-modules**: Módulos utilitários compartilhados, como funções PySpark e clientes AWS (boto3).
- **infra**: Scripts de Infrastructure as Code para provisionamento de recursos AWS.
- **ci-cd**: Configurações de GitHub Actions para integração contínua e deploy de pipelines.
- **docs**: Diagramas de arquitetura, documentação e fluxos de dados.

## Próximos Passos

1. Explore os pipelines e testes em cada módulo.
2. Consulte os arquivos README individuais em cada pasta para detalhes de execução.
3. Configure os módulos adicionais usando o bucket criado como referência.
