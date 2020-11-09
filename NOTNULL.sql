CREATE TABLE tb_notnull(
Cod INT PRIMARY KEY,
NOME VARCHAR(50) NOT NULL,
DT DATE NULL
)

--CERTO / TUDO PREENCHIDO
INSERT INTO tb_notnull (COD, NOME, DT)
VALUES (1,'PEIXE CANIBAL','2020-10-01')

--CERTO2 / CAMPOS QUE TEM O NULL PODEM RECEBER RECEBER VALORES NULOS
INSERT INTO tb_notnull (COD, NOME)
VALUES (3, 'PEIXE DO PAULISTINHA')

INSERT INTO tb_notnull (COD, NOME, DT)
VALUES (23, 'PEIXE DO OI�O 2', NULL), (2, 'PEIXE BETA', NULL)

--ERRO / TENTAR INSERIR NULO NO NOME
INSERT INTO tb_notnull (COD, NOME, DT)
VALUES (4, NULL, '2020-10-01')

SELECT * FROM tb_notnull