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

## Configuração de Credenciais AWS

Configure suas credenciais AWS para que o Terraform e outros scripts possam autenticar:

```bash
aws configure
```
