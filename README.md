
# SmartEdu  

SmartEdu é uma plataforma completa e integrada para gerenciamento de atividades, eventos e interações em ambientes educacionais, empresariais ou outros nichos personalizáveis. A aplicação foi projetada para facilitar a organização, o engajamento e a comunicação entre usuários, oferecendo funcionalidades robustas para diferentes necessidades.  

---

## Tecnologias Utilizadas  
- **Backend**:  
  - [Node.js](https://nodejs.org/)  
  - [Express.js](https://expressjs.com/)  
  - [PostgreSQL](https://www.postgresql.org/)  

- **Frontend**:  
  - [Flutter](https://flutter.dev/)  

---

## Funcionalidades Principais  

### Usuário
1. **Página Principal/Dashboard**:  
   - Exibe as atividades marcadas para o dia.  
   - Contador para os dois compromissos mais próximos.  

2. **Notificações Inteligentes**:  
   - Alertas sobre alterações, cancelamentos ou novos agendamentos.  
   - Novos eventos são notificados automaticamente.  

3. **Gestão de Perfis de Usuário**:  
   - Diferentes tipos de perfis parametrizáveis (escolar, empresarial, etc.).  

4. **Interação em Eventos**:  
   - Convidados podem visualizar mensagens relacionadas a eventos e fazer perguntas em postagens compartilhadas ou individuais.  

5. **Acessibilidade de Informações**:  
   - Horários de aulas e compromissos disponíveis de forma intuitiva.  

6. **Backup de Dados**:  
   - Registros e atividades armazenados de forma segura.  

---

### Moderadores/Professores
1. **Gerenciamento de Mensagens**:  
   - Visualização de quem interagiu com notificações.  

2. **Gráficos de Engajamento**:  
   - Visualização comparativa da participação dos alunos.  

---

### Recursos Extras  
1. **Integração com Khan Academy**:  
   - Acesso direto a conteúdos educacionais.  

2. **Sistema de Fórum**:  
   - Alunos podem criar tópicos e participar de discussões.  

---

## Configuração do Ambiente de Desenvolvimento  

### Requisitos:  
- Node.js (v16 ou superior)  
- Flutter (v3.0 ou superior)  
- PostgreSQL (v14 ou superior)  

### Passo a Passo:
1. **Clone o Repositório**:  
   ```bash
   git clone git@github.com:InspireLogic/SmartEdu.git
   cd smartedu
   ```

2. **Configuração do Backend**:  
   - Navegue até a pasta `backend`:  
     ```bash
     cd backend
     ```  
   - Instale as dependências:  
     ```bash
     npm install
     ```  
   - Configure as variáveis de ambiente no arquivo `.env`:  
     ```env
     DATABASE_URL=postgresql://usuario:senha@localhost:5432/smartedu
     JWT_SECRET=sua_chave_secreta
     ```  
   - Inicie o servidor:  
     ```bash
     npm run dev
     ```  

3. **Configuração do Frontend**:  
   - Navegue até a pasta `frontend`:  
     ```bash
     cd frontend
     ```  
   - Instale as dependências Flutter:  
     ```bash
     flutter pub get
     ```  
   - Execute o aplicativo em um emulador ou dispositivo conectado:  
     ```bash
     flutter run
     ```  

4. **Configuração do Banco de Dados**:  
   - Crie o banco de dados no PostgreSQL:  
     ```sql
     CREATE DATABASE smartedu; >> LINK do Script
     ```  
   - Execute as migrações (serão configuradas posteriormente no backend).  

---

## Roadmap  
1. **Decisão da Arquitetura**:  
   - Análise entre monolito, microserviços ou outras abordagens.  

2. **Autenticação e Autorização**:  
   - Implementação de login seguro com JWT.  

3. **Integração com Khan Academy**:  
   - API para disponibilizar conteúdos educacionais diretamente no sistema.  

4. **Fórum e Gráficos**:  
   - Desenvolvimento das seções de interação e visualização de dados.  

---

## Licença  
Este projeto está licenciado sob a [Licença MIT](LICENSE).  

developers: Erick and Gustavo
---
