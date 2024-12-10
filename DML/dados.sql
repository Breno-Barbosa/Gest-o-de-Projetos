-- Inserindo dados na tabela FUNCIONARIOS
INSERT INTO USR_GESTAO_PROJ.FUNCIONARIOS (FUNCIONARIO_ID, NOME, DATA_NASCIMENTO, CARGO, SALARIO, DATA_ADMISSAO)
VALUES (1, 'Ana Souza', TO_DATE('1985-03-25', 'YYYY-MM-DD'), 'Gerente de Projetos', 8500.00, TO_DATE('2015-05-10', 'YYYY-MM-DD'));

INSERT INTO USR_GESTAO_PROJ.FUNCIONARIOS (FUNCIONARIO_ID, NOME, DATA_NASCIMENTO, CARGO, SALARIO, DATA_ADMISSAO)
VALUES (2, 'Carlos Oliveira', TO_DATE('1990-07-14', 'YYYY-MM-DD'), 'Desenvolvedor', 4500.00, TO_DATE('2018-03-20', 'YYYY-MM-DD'));

-- Inserindo dados na tabela PROJETOS
INSERT INTO USR_GESTAO_PROJ.PROJETOS (PROJETO_ID, NOME, DESCRICAO, DATA_INICIO, DATA_FIM, ORCAMENTO)
VALUES (1, 'Sistema de Gestão', 'Projeto para criar um sistema de gestão', TO_DATE('2023-01-15', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 150000.00);

-- Inserindo dados na tabela TAREFAS
INSERT INTO USR_GESTAO_PROJ.TAREFAS (TAREFA_ID, PROJETO_ID, NOME, DESCRICAO, RESPONSAVEL_ID, DATA_INICIO, DATA_FIM, STATUS)
VALUES (1, 1, 'Análise de Requisitos', 'Coletar e documentar os requisitos do sistema', 1, TO_DATE('2023-01-15', 'YYYY-MM-DD'), TO_DATE('2023-02-15', 'YYYY-MM-DD'), 'Concluída');

INSERT INTO USR_GESTAO_PROJ.TAREFAS (TAREFA_ID, PROJETO_ID, NOME, DESCRICAO, RESPONSAVEL_ID, DATA_INICIO, DATA_FIM, STATUS)
VALUES (2, 1, 'Desenvolvimento do Backend', 'Criar a estrutura do backend', 2, TO_DATE('2023-03-01', 'YYYY-MM-DD'), TO_DATE('2023-06-30', 'YYYY-MM-DD'), 'Em andamento');

-- Inserindo dados na tabela ALOCACOES_RECURSOS
INSERT INTO USR_GESTAO_PROJ.ALOCACOES_RECURSOS (ALOCACAO_ID, PROJETO_ID, FUNCIONARIO_ID, HORAS_TRABALHADAS)
VALUES (1, 1, 1, 160.00);

INSERT INTO USR_GESTAO_PROJ.ALOCACOES_RECURSOS (ALOCACAO_ID, PROJETO_ID, FUNCIONARIO_ID, HORAS_TRABALHADAS)
VALUES (2, 1, 2, 200.00);
