CREATE TABLE ALUNO(
MATRICULA INT PRIMARY KEY,
NOME VARCHAR(20)
)

CREATE TABLE DISCIPLINA(
CODDISC CHAR(3) PRIMARY KEY,
DESCRICAO VARCHAR(20)
)

INSERT INTO ALUNO (MATRICULA, NOME)
VALUES(100, 'ALUNO A') , (150,'ALUNO B')

INSERT INTO DISCIPLINA(CODDISC, DESCRICAO)
VALUES ('PBD', 'PROG. EM BD'), ('POO', 'PROG. ORIENT. A OBJ')

SELECT * FROM ALUNO
SELECT * FROM DISCIPLINA
SELECT * FROM ALUNO_DISCIPLINA

CREATE TABLE ALUNO_DISCIPLINA(
PK_ALUNO_DISCIPLINA INT PRIMARY KEY IDENTITY,
FK_MATRICULA INT FOREIGN KEY REFERENCES ALUNO (MATRICULA),
FK_CODDISC CHAR(3) FOREIGN KEY REFERENCES DISCIPLINA (CODDISC)
)

INSERT INTO ALUNO_DISCIPLINA(FK_CODDISC, FK_MATRICULA)
VALUES ('PBD',100),('POO',100),('POO', 150)