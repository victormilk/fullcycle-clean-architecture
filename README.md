# Desafio de Integração de Serviços

## Descrição

Este projeto implementa um sistema de pedidos utilizando diferentes tecnologias e padrões de comunicação, incluindo REST, gRPC e GraphQL.

## Endpoints

### REST
- **PORTA UTILIZADA: `8000`.
- **GET /order**: Lista todos os pedidos.
- **POST /order**: Cria um pedido.

### gRPC
- **PORTA UTILIZADA**: `8000`.
- **Service OrderService**: Serviço gRPC de pedidos.
  - **Calls: ListOrders, CreateOrder**: Chamadas do serviço.

### GraphQL
- **PORTA UTILIZADA**: `8080`.
- **Query ListOrders**: Query GraphQL para listar pedidos.
- **Mutation CreateOrder**: Mutation GraphQL para criar um pedido.

## Configuração do Ambiente

### Requisitos

- Docker
- Docker Compose

### Passos para Configuração

1. Clone o repositório:
    ```sh
    git clone https://github.com/victormilk/fullcycle-clean-architecture.git
    cd fullcycle-clean-architecture
    ```

2. Utilizando o DevContainer para configurar o ambiente de desenvolvimento de forma rápida e prática.
    - Certifique-se de ter o Docker instalado e em execução.
      Abra o projeto no Visual Studio Code.
      Instale a extensão "Remote - Containers" do Visual Studio Code, se ainda não o      fez.
      Pressione `F1`, digite `Remote-Containers: Open Folder in Container...` e       selecione a pasta do projeto.
      Isso irá configurar e iniciar o ambiente de desenvolvimento dentro de um      contêiner Docker, com todas as dependências necessárias já instaladas.

    -  Para iniciar a aplicação:
        ```sh
        make run-app
        ```

3. Utilizando docker-compose
    ```sh
    docker-compose -up -d
    ```
