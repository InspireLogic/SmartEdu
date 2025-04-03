# Estrutura da Pasta `scripts/`

A pasta `scripts/` contém scripts auxiliares para automação de tarefas relacionadas ao desenvolvimento, implantação e manutenção da API.

## Estrutura dos Arquivos

```mermaid
graph TD;
    A[scripts/] -->|Banco de Dados| B(migrate.js);
    A -->|Banco de Dados| C(seed.js);
    A -->|Banco de Dados| D(backup_db.sh);
    
    A -->|Automação| E(start_dev.sh);
    A -->|Automação| F(deploy.sh);
    A -->|Automação| G(build_docker.sh);
    
    A -->|Testes e Monitoramento| H(run_tests.sh);
    A -->|Testes e Monitoramento| I(benchmark.js);
    
    A -->|Manutenção| J(clear_cache.js);
    A -->|Manutenção| K(update_dependencies.sh);
    A -->|Manutenção| L(health_check.sh);
    
    A -->|Configuração e Logs| M(setup_env.sh);
    A -->|Configuração e Logs| N(log_rotation.sh);
```

## Descrição dos Arquivos

### Scripts de Banco de Dados
- **`migrate.js`** → Executa migrações do banco de dados usando Sequelize.
- **`seed.js`** → Popula o banco com dados iniciais (seeds).
- **`backup_db.sh`** → Faz backup do banco de dados automaticamente.

### Scripts de Automação
- **`start_dev.sh`** → Inicializa a API no modo de desenvolvimento.
- **`deploy.sh`** → Automatiza a implantação da API no servidor.
- **`build_docker.sh`** → Gera a imagem Docker para o projeto.

### Testes e Monitoramento
- **`run_tests.sh`** → Executa os testes unitários, integração e e2e.
- **`benchmark.js`** → Executa testes de desempenho usando `k6`.

### Scripts de Manutenção
- **`clear_cache.js`** → Limpa cache de dados armazenados em Redis ou outro serviço.
- **`update_dependencies.sh`** → Atualiza pacotes do `package.json`.
- **`health_check.sh`** → Verifica se os serviços essenciais da API estão rodando.

### Scripts de Configuração e Logs
- **`setup_env.sh`** → Cria arquivos `.env` iniciais com valores padrão.
- **`log_rotation.sh`** → Gerencia logs da aplicação para evitar sobrecarga no servidor.

