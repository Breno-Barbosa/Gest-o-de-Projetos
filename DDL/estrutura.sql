-- Criação da tabela TAREFAS
CREATE TABLE USR_GESTAO_PROJ.TAREFAS (
    TAREFA_ID NUMBER NOT NULL,
    PROJETO_ID NUMBER NOT NULL,
    NOME VARCHAR2(100) NOT NULL,
    DESCRICAO CLOB,
    RESPONSAVEL_ID NUMBER,
    DATA_INICIO DATE,
    DATA_FIM DATE,
    STATUS VARCHAR2(50),
    CONSTRAINT PK_TAREFAS PRIMARY KEY (TAREFA_ID),
    CONSTRAINT FK_TAREFAS_PROJ FOREIGN KEY (PROJETO_ID) REFERENCES USR_GESTAO_PROJ.PROJETOS (PROJETO_ID),
    CONSTRAINT FK_TAREFAS_RESP FOREIGN KEY (RESPONSAVEL_ID) REFERENCES USR_GESTAO_PROJ.FUNCIONARIOS (FUNCIONARIO_ID)
);

-- Criação da tabela FUNCIONARIOS
CREATE TABLE USR_GESTAO_PROJ.FUNCIONARIOS (
    FUNCIONARIO_ID NUMBER NOT NULL,
    NOME VARCHAR2(100) NOT NULL,
    DATA_NASCIMENTO DATE,
    CARGO VARCHAR2(100),
    SALARIO NUMBER(10,2),
    DATA_ADMISSAO DATE,
    CONSTRAINT PK_FUNCIONARIOS PRIMARY KEY (FUNCIONARIO_ID)
);

-- Criação da tabela PROJETOS
CREATE TABLE USR_GESTAO_PROJ.PROJETOS (
    PROJETO_ID NUMBER NOT NULL,
    NOME VARCHAR2(100) NOT NULL,
    DESCRICAO CLOB,
    DATA_INICIO DATE,
    DATA_FIM DATE,
    ORCAMENTO NUMBER(10,2),
    CONSTRAINT PK_PROJETOS PRIMARY KEY (PROJETO_ID)
);

-- Criação da tabela ALOCACOES_RECURSOS
CREATE TABLE USR_GESTAO_PROJ.ALOCACOES_RECURSOS (
    ALOCACAO_ID NUMBER NOT NULL,
    PROJETO_ID NUMBER NOT NULL,
    FUNCIONARIO_ID NUMBER NOT NULL,
    HORAS_TRABALHADAS NUMBER(5,2),
    CONSTRAINT PK_ALOCACOES PRIMARY KEY (ALOCACAO_ID),
    CONSTRAINT FK_ALOCACOES_PROJ FOREIGN KEY (PROJETO_ID) REFERENCES USR_GESTAO_PROJ.PROJETOS (PROJETO_ID),
    CONSTRAINT FK_ALOCACOES_FUNC FOREIGN KEY (FUNCIONARIO_ID) REFERENCES USR_GESTAO_PROJ.FUNCIONARIOS (FUNCIONARIO_ID)
);
