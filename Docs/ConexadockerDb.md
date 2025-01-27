# Documentação para Conectar ao Docker Container com PostgreSQL

Este documento fornece um passo a passo sobre como construir e acessar um Docker container com PostgreSQL, e como conectar a ele a partir de uma ferramenta SGBD como o DataGrip.

## 1. Construção e Execução do Container com PostgreSQL

### 1.1. Criação do `docker-compose.yml`

Primeiro, você precisa configurar o arquivo `docker-compose.yml` para criar o container com PostgreSQL. O arquivo deve ser semelhante a este:

```yaml
version: '3.9'

services:
  dbSmartEdu:
    image: postgres:latest
    restart: always
    environment:
      POSTGRES_USER: usersmart
      POSTGRES_PASSWORD: userteste
      POSTGRES_DB: smartedu
    ports:
      - "5432:5432"
    volumes:
      - pgdata:/var/lib/postgresql/data:rw

volumes:
  pgdata: {}
```

- **POSTGRES_USER**: Define o usuário do banco de dados.
- **POSTGRES_PASSWORD**: Define a senha do banco de dados.
- **POSTGRES_DB**: Define o nome do banco de dados.
- **ports**: Expõe a porta 5432 do container para a máquina local.

### 1.2. Construção e Inicialização do Container

Com o arquivo `docker-compose.yml` configurado, execute o seguinte comando no terminal para iniciar o container:

```bash
docker-compose up -d
```

Esse comando baixa a imagem do PostgreSQL (caso não esteja localmente), cria e inicializa o container em segundo plano (`-d`).

Para verificar se o container está em execução, use:

```bash
docker ps
```

Você deve ver o container listado, com o PostgreSQL rodando na porta 5432.

### 1.3. Acessando o Container

Se você precisar acessar o container em si para ver logs ou executar comandos, utilize:

```bash
docker exec -it nome_do_container bash
```

Substitua `nome_do_container` pelo nome real do seu container, que pode ser obtido com `docker ps`.

---

## 2. Conectando ao Banco de Dados PostgreSQL do Container

Agora que o banco de dados está configurado e em execução, o próximo passo é conectar-se a ele usando um SGBD como o **DataGrip**.

### 2.1. Configuração no DataGrip

1. Abra o **DataGrip**.
2. Na tela inicial, clique em **+** para adicionar uma nova conexão.
3. Selecione o tipo de banco de dados como **PostgreSQL**.
4. Preencha os campos da seguinte maneira:
   - **Host**: `localhost`
   - **Port**: `5432`
   - **User**: `usersmart` (usuário configurado no Docker)
   - **Password**: `userteste` (senha configurada no Docker)
   - **Database**: `smartedu` (nome do banco de dados configurado no Docker)
**OBS** esse parametros são apenas para finalidade de desenvolvimento, e serão alterados para dados mais seguros posteriormente.
5. Clique em **Test Connection** para garantir que a conexão esteja funcionando corretamente.

6. Após a validação bem-sucedida, clique em **OK** para salvar a conexão.

---

## 3. Script de Banco de Dados

O script SQL para a criação do banco de dados e das tabelas necessárias está localizado na pasta `docs`, com o nome **DBScript.sql**.

- **Caminho do arquivo**: `docs/DBScript.sql`

Para utilizar o script, basta abrir o arquivo e executá-lo na sua instância do PostgreSQL.

---

## 4. Solução de Problemas

### 4.1. Problema de Conexão

Se você estiver enfrentando problemas para conectar ao banco de dados, certifique-se de que o container está rodando e que a porta `5432` está exposta corretamente. Além disso, verifique se as credenciais (usuário, senha e banco) estão corretas.

Para verificar se o PostgreSQL está ouvindo na porta certa dentro do container, execute:

```bash
docker exec -it nome_do_container netstat -tnlp | grep 5432
```

Se o PostgreSQL não estiver respondendo na porta correta, reinicie o container com:

```bash
docker-compose restart
```

### 4.2. Verificando Logs

Se houver problemas durante o início do container, você pode verificar os logs usando:

```bash
docker-compose logs dbSmartEdu
```

