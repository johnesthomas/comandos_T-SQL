CREATE TABLE tb_default(
COD INT PRIMARY KEY IDENTITY,
NOME VARCHAR(50),
dtInsert DATE CONSTRAINT DF_DATA DEFAULT (GETDATE()),
VALOR SMALLMONEY DEFAULT(1000)
)

INSERT INTO tb_default(NOME, dtInsert, VALOR)
VALUES ('LUIZ', '2020-10-01', 7500)

INSERT INTO tb_default(NOME, dtInsert)
VALUES ('KARINE', '2020-10-01')

INSERT INTO tb_default(NOME, VALOR)
VALUES ('ANA', 7500)

INSERT INTO tb_default(NOME)
VALUES ('MARINA')

SELECT * FROM tb_default