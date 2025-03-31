
# SmartEdu  

SmartEdu é uma plataforma completa e integrada para a criação, gestão e distribuição de cursos online. Projetada para atender instituições de ensino, empresas e instrutores independentes, a aplicação facilita o gerenciamento de conteúdos educacionais, promovendo o engajamento e a interação entre alunos e professores. Com funcionalidades robustas, o SmartEdu permite a organização eficiente de aulas, avaliações, certificações e fóruns de discussão, proporcionando uma experiência de aprendizado dinâmica.

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
   - Exibe os cursos em andamento e os próximos módulos a serem concluídos.  
   - Contador para as próximas aulas ao vivo ou prazos de entrega de atividades.  

2. **Notificações Inteligentes**:  
   - Alertas sobre novos cursos, atualizações de conteúdo e prazos de avaliação.  
   - Lembretes automáticos para aulas ao vivo e conclusão de módulos.  

3. **Gestão de Perfis de Usuário**:  
   - Perfis parametrizáveis para alunos, instrutores e administradores.  

4. **Interação em Cursos**:  
   - Alunos podem visualizar e participar de fóruns de discussão dentro dos cursos.  
   - Possibilidade de enviar dúvidas e interagir com instrutores e colegas.  

5. **Acessibilidade de Conteúdos**:  
   - Aulas gravadas, materiais complementares e avaliações disponíveis de forma intuitiva.  

6. **Backup de Dados**:  
   - Progresso dos alunos e atividades armazenados de forma segura.  

---

### Moderadores/Professores  

1. **Gerenciamento de Mensagens**:  
   - Visualização de quem interagiu com notificações.  
   - Possibilidade de responder perguntas e fornecer feedback diretamente nas postagens.  

2. **Gráficos de Engajamento**:  
   - Visualização comparativa da participação dos alunos.  
   - Relatórios detalhados sobre o desempenho dos alunos em quizzes, provas e atividades.  

3. **Gerenciamento de Usuário**:  
   - O moderador/professor pode adicionar ou remover usuários do curso.  
   - Atribuição de funções e permissões personalizadas para alunos monitores ou assistentes.  

4. **Criação e Gerenciamento de Cursos**:  
   - Upload de vídeos, PDFs e outros materiais didáticos.  
   - Organização de módulos e sequências de aprendizagem.  
   - Configuração de prazos para avaliações e entrega de atividades.  

5. **Avaliação e Certificação**:  
   - Correção automática de quizzes e avaliações com feedback personalizado.  
   - Emissão de certificados após a conclusão dos cursos.  
   - Possibilidade de adicionar critérios para aprovação e liberação de conteúdos progressivos.  

6. **Interação com Alunos**:  
   - Fórum de dúvidas e suporte dentro dos cursos.  
   - Envio de mensagens personalizadas para grupos de alunos ou indivíduos.  
   - Sessões ao vivo com suporte para gravação e replay.  

7. **Automação e Relatórios**:  
   - Geração de relatórios de desempenho individuais e coletivos.  
   - Notificações automáticas sobre alunos com baixo engajamento.  
   - Integração com ferramentas externas para exportação de dados e métricas.  

---

### Recursos Extras  

1. **Integração com Khan Academy** (implementação futura deverá ser avaliada):  
   - Acesso direto a conteúdos educacionais.  
   - Possibilidade de importar módulos e atividades complementares.  

2. **Sistema de Fórum**:  
   - Alunos podem criar tópicos e participar de discussões.  
   - Professores e moderadores podem destacar tópicos importantes.  
   - Notificações para respostas e menções em discussões.  

3. **Gamificação e Recompensas**:  
   - Pontuação e medalhas para alunos conforme o progresso no curso.  
   - Desafios e rankings para incentivar a participação.  
   - Recompensas como certificados especiais e benefícios exclusivos.  

4. **Biblioteca de Recursos**(implementação futura deverá ser avaliada):  
   - Repositório de materiais complementares como artigos, e-books e vídeos.  
   - Acesso controlado para materiais exclusivos a determinados cursos ou usuários.  

5. **Aplicativo Mobile**:  
   - Acesso facilitado aos cursos via dispositivos móveis.  
   - Notificações em tempo real sobre novos conteúdos.  
   - Sincronização de progresso entre web e mobile.  

6. **Sistema de Avaliação Avançado** (implementação futura deverá ser avaliada):  
   - Banco de questões para criação dinâmica de provas e quizzes.  
   - Opções de avaliação automática ou revisão manual.  
   - Feedback detalhado para cada resposta dos alunos.  

7. **Integração com Ferramentas Externas** :  
   - Suporte para Google Drive e Dropbox para upload e compartilhamento de arquivos.  
   - Integração com Zoom e Microsoft Teams para aulas ao vivo.    

8. **Modo Offline para Estudo** (implementação futura):  
   - Download de aulas e materiais para acesso sem internet.  
   - Sincronização automática ao reconectar-se.  

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
