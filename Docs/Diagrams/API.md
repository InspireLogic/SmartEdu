# API SMART EDU

Api desenvolvida para o sistema SMARTEDU, é um sistema para gerênciamento de recursos em humanos que abrange uma gama de soluções, desde o fornecimento de cursos para treinamentos ou mesmo para gerenciamente de recursos humanos.

## Funcionalidades Iniciais
* Criação de plataforma de cursos e treinamentos profissionais que possuem como finalidade:
    1. Treinar;
    2. Mapear;
    3. Selecionar;
    4. Recomendar;

## Tecnologia Utilizadas
* Backend:
    Node.js
* FrameWorks:
    1. express.js (api rest)
    2. k6.js    (Test)
    3. Sequilize (ORM)

## API Diagrama

Considerando a escabilidade e a necessidade de moduliação da aplicação, optamos pelo uso da api no modelo de **Arquitetura Hexagonal** (também como **Ports and Adaptares**) é um estilo de design que visa desacoplar os componentes centrais da aplicação(lógica de negócios) dos detalhes externos, como frameworks, banco de dados ou APIs externas. Isso facilita a testabilidade, manutenção e escalabilidade.

```mermaid
graph TB
    subgraph Core
        Dom[Domain Logic]
        App[Application Service]
    end
    subgraph Ports
        In[Input Port]
        Out[Output Port]
    end
    subgraph Adapters
        Ui[User Interface]
        Api[Rest Api]
        DbAd[Database Adapter]
        ExtServ[External Service Adapter]
    end

    Ui-->In
    In-->Dom
    Dom--->App
    App-->Dom
    App--->Out
    Out-->DbAd
    Out-->ExtServ
    Api-->In
    


```

## **Core (Núcleo da Aplicação)**

| Elemento | O que faz | Responsabilidade |
|---------|----------|------------------|
| **Domain Logic** | Onde ficam as regras de negócio puras | Contém as entidades, agregados, validações, e lógicas que independem de framework ou tecnologia |
| **Application Service** | Orquestrador das ações | Controla o fluxo de execução da regra de negócio, interage com as portas de saída para buscar ou persistir dados |


## **Ports (Portas de Entrada e Saída)**

| Elemento | O que faz | Responsabilidade |
|---------|----------|------------------|
| **Input Port** | Contrato da entrada de dados | Interface que define os métodos que a aplicação aceita receber (ex: `create_user`, `get_orders`) |
| **Output Port** | Contrato para saída de dados | Interface que define as dependências externas que o Core precisa (ex: repositórios, serviços externos) |

---

## **Adapters (Adaptadores de Entrada e Saída)**

| Elemento | O que faz | Responsabilidade |
|---------|----------|------------------|
| **User Interface (UI)** | Camada de apresentação (web ou app) | Exibe informações para o usuário e captura dados (pode ser web, mobile, CLI) |
| **REST API** | Adapter de Entrada | Traduz requisições HTTP em chamadas para o **Input Port**. Ex: um `POST /users` vira `create_user(data)` |
| **Database Adapter** | Adapter de Saída | Implementa o contrato do OutputPort para interagir com o banco de dados |
| **External Service Adapter** | Adapter de Saída | Implementa o contrato do OutputPort para consumir APIs externas, filas, serviços de terceiros |

---
## Diagrama
```mermaid

graph TD
    subgraph "Driving Side (Entrada)"
        A[User Interaction]
        B[REST Controller]
        C[Input Port]
    end

    subgraph "Core (Núcleo)"
        D[Application Service]
        E[Domain Logic]
    end

    subgraph "Driven Side (Saída)"
        F[Output Port]
        G[Database Adapter]
        H[External API Adapter]
    end

    A --> B --> C --> D --> E
    E --> F --> G[Repository]
    E --> F --> H[Third-party API Service]

```
## **Exemplo de Fluxo Completo**

1. Usuário faz um POST /users na REST API (Adapter de Entrada)
2. REST API chama o método do InputPort -> create_user()
3. Application Service orquestra a lógica
4. Regras de negócio (Domain Logic) são aplicadas
5. Se precisar salvar algo, Application Service chama o OutputPort
6. OutputPort chama o Database Adapter para persistir os dados
7. Resposta é devolvida pela REST API


```mermaid

graph TD
    subgraph "Driving Side (Entrada)"
        A[User Interaction]
        B[REST Controller]
        C[Input Port]
    end

    subgraph "Core (Núcleo)"
        D[Application Service]
        E[Domain Logic]
    end

    subgraph "Driven Side (Saída)"
        F[Output Port]
        G[Database Adapter]
        H[External API Adapter]
    end

    A --> B --> C --> D --> E
    E --> F --> G[Repository]
    E --> F --> H[Third-party API Service]
```
### Estrutura da API
1. Driving Side (Entrada):

* User Interaction: Representa o ponto inicial das interações, como um cliente ou usuário.
* REST Controller: Traduz as requisições para chamadas nos ports de entrada.
* Input Port: Define a interface usada pelo núcleo para receber comandos.

2. Core (Núcleo):
* Application Service: Orquestra chamadas entre o domínio e os ports.
* Domain Logic: Contém as regras de negócios centrais.

3. Driven Side (Saída):
* Output Port: Interface para comunicação com sistemas externos.
* Database Adapter: Implementação do repositório.
* External API Adapter: Implementação de chamadas para serviços externos.

## Estrutura Organizacional da API.

```mermaid
flowchart LR
b(API/)
a(src/)

a1[applications/]
a12[services/]
a13[dataTransferOs/]

a2[domain/]
a21[entities/]
a22[repositories/]
a23[exections/]

a3[infrastructure/]
a31[database/]
a32[external_apis/]
a33[mappers/]
a34[repositories/]
a35[configurations/]

a4[presentation/]
a41[controllers/]
a42[middlewares/]
a43[validators/]

c(testes/)
c1[unit/]
c2[integration/]
c3[e2e/]

d(scripts/)
a-->d

e(docs/)
a--->e
f[.env]
a--->f
g[README.md]
a--->g
h[requeriments - para python.txt]
a--->h
i[package.json]
a--->i

b--->a
a--->a1
a--->a2
a--->a3
a--->a4

a1-->a12
a1-->a13

a2-->a21
a2-->a22
a2-->a23

a3-->a31
a3-->a32
a3-->a33
a3-->a34
a3-->a35

a4-->a41
a4-->a42
a4-->a43

a--->c

c-->c1
c-->c2
c-->c3
```
### Descrição do Modelo
1. application/:
- Contém os serviços de aplicação que orquestram as operações de alto nível.
- Os DTOs garantem a separação entre as camadas.
2. domain/:
- O núcleo do sistema, com regras de negócios, entidades, e interfaces para persistência.
3. infrastructure/:
- Implementações de repositórios, integração com bancos de dados e APIs externas.
- Contém código dependente de frameworks e infraestrutura.
presentation/:

4. Responsável por interagir com o usuário ou cliente (controladores REST, validações de entrada).
5. tests/:
- Separado por tipo de teste para facilitar a manutenção e a rastreabilidade.

```mermaid
graph TD
    subgraph "presentation/"
        A[REST Controllers] -->|Processa entrada| B[Validation Layer]
    end

    subgraph "application/"
        C[Application Services]
        D[DTOs]
        C -->|Usa| D
    end

    subgraph "domain/"
        E[Entities]
        F[Domain Services]
        G[Interfaces]
        F -->|Depende de| E
        E -->|Define| G
    end

    subgraph "infrastructure/"
        H[Repositories]
        I[External API Integrations]
        J[Database Implementations]
        H -->|Implementa| G
        I -->|Comunica-se com| J
    end

    subgraph "tests/"
        K[Unit Tests]
        L[Integration Tests]
        M[End-to-End Tests]
    end

    A --> C --> F
    F --> H
    I --> J
    K -->|Testa| C
    L -->|Testa| E
    M -->|Testa| A

```
