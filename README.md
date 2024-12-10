# Gestao-de-Projetos

## Descrição

Este projeto contém a implementação de um banco de dados para a gestão de projetos. O banco de dados foi desenvolvido com base no Modelo Físico de Dados (MFD) fornecido, contendo as tabelas relacionadas a funcionários, projetos, tarefas e alocações de recursos.

## Tabelas e Relacionamentos

1. **FUNCIONARIOS**
   - Armazena informações sobre os funcionários.
   - Relacionado com a tabela **TAREFAS** e **ALOCACOES_RECURSOS**.

2. **PROJETOS**
   - Contém os detalhes dos projetos em andamento.
   - Relacionado com as tabelas **TAREFAS** e **ALOCACOES_RECURSOS**.

3. **TAREFAS**
   - Registra as tarefas de cada projeto, com a descrição, responsáveis e status.
   - Relacionada com a tabela **PROJETOS** e **FUNCIONARIOS**.

4. **ALOCACOES_RECURSOS**
   - Registra as alocações de funcionários aos projetos e as horas trabalhadas.
   - Relacionada com a tabela **FUNCIONARIOS** e **PROJETOS**.

## Como Executar

1. Abra o **Oracle SQL Developer** ou qualquer outro cliente SQL que tenha acesso ao banco Oracle.
2. Conecte-se ao banco de dados Oracle.
3. Execute os scripts **estrutura.sql** e **dados.sql** na ordem:
   - `@estrutura.sql`
   - `@dados.sql`
