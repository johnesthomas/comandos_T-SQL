CREATE TABLE tb_fk_marca (
Cod INT PRIMARY KEY IDENTITY,
Nome VARCHAR(50)
)

INSERT INTO tb_fk_marca (Nome)
VALUES ('CHEVROLET'),('VW')

SELECT * FROM tb_fk_marca

CREATE TABLE tb_fk_carro(
Placa VARCHAR(6) PRIMARY KEY,
Modelo VARCHAR(50),
fk_marca INT FOREIGN KEY REFERENCES tb_fk_marca(Cod)
)

INSERT INTO tb_fk_carro (Placa, Modelo, fk_marca)
VALUES ('PLC123', 'ONIX PLUS', 1), ('PLC124', 'FOX', 2)

SELECT * FROM tb_fk_carro

INSERT INTO tb_fk_marca(Nome)
VALUES ('FIAT')

INSERT INTO tb_fk_carro (Placa, Modelo, fk_marca)
VALUES ('PLC125', 'CHRONUS', 3)

INSERT INTO tb_fk_carro (Placa, Modelo, fk_marca)
VALUES ('PLC126', 'ARGO', NULL)