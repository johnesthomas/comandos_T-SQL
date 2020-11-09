SELECT * FROM FUNCIONARIO

DECLARE @TXT1 VARCHAR(14) = '111.222.333-44'

SELECT SUBSTRING (@TXT, 13,2) AS TEST_SUBSTRING

DECLARE @TXT VARCHAR(11) = '11122233344'

IF LEN (@TXT) = 11 PRINT 'VALIDO'
ELSE PRINT 'INVALIDO'

----------------------------------------------------

DECLARE @TXT2 VARCHAR(20) = 'CONSULTA BD'

SELECT CHARINDEX (' ', @TXT2) TEST_CHARINDEX

----------------------------------------------------

DECLARE @TXT3 VARCHAR(20) = 'AA01-GHF1-TT99-0087'
SELECT SUBSTRING(@TXT3,CHARINDEX('-', @TXT3) + 1, 4) AS TEST_PATINDEX

DECLARE @TXT4 VARCHAR(20) = 'AA01-GHF1-TT99-0087'
SELECT SUBSTRING(@TXT4,PATINDEX('%HF%', @TXT4) + 1, 4) AS TEST_PATINDEX

----------------------------------------------------
SELECT * FROM FUNCIONARIO WHERE NOME LIKE '%JOSE%'
----------------------------------------------------


DECLARE @TXT5 VARCHAR(20) = 'JOHNES THOMAS'
SELECT REPLACE(@TXT5, 'JOHNES', 'johnes') TEST_REPLACE

DECLARE @TXT6 VARCHAR(20) = '111.222.333-44'
SELECT REPLACE(REPLACE(@TXT6, '.', ''), '-', '') TEST_REPLACE

----------------------------------------------------

DECLARE @TXT7 VARCHAR(20) = 'johNes ThomAs'

SELECT UPPER(@TXT7) TEST_UPPER
SELECT LOWER(@TXT7) TEST_LOWER

----------------------------------------------------

--DESAFIO DEIXAR A PRIMEIRA LETRA DO TEXTO MAISCULA E O RESTO MINUSCULA

----------------------------------------------------

DECLARE @TXT8 VARCHAR(100) = '        JOHNES THOMAS        '
SELECT LTRIM (@TXT8) TEST_LTRIM
SELECT RTRIM (@TXT8) TEST_RTRIM


SELECT LTRIM (RTRIM (@TXT8)) TEST_LTRIM_RTRIM

----------------------------------------------------

SELECT NOME, SALARIO, DATADEMISSAO,
CONCAT ('NOME: ',NOME,' - SALARIO: ',SALARIO,' - DATA DE DEMISSÃO: ',DATADEMISSAO) TEST_CONCAT
FROM FUNCIONARIO

----------------------------------------------------

SELECT
NOME, DATAADMISSAO,
DATEPART(DAY,DATAADMISSAO) AS DIA,
DATEPART(MONTH,DATAADMISSAO) AS MES,
DATEPART(YEAR,DATAADMISSAO) AS ANO,
DATEPART(DAYOFYEAR,DATAADMISSAO) AS DIA_DO_ANO
FROM FUNCIONARIO

SELECT DATEPART(MILLISECOND, GETDATE()) AS DATA_HORA_SISTEMA

SELECT
CASE DATEPART(MONTH,DATAADMISSAO)
when 1 then 'Janeiro'
when 2 then 'Feveiro'
when 3 then 'Março'
when 4 then 'Abril'
when 5 then 'Maio'
end as mes_extenso,
NOME, DATAADMISSAO
from FUNCIONARIO

----------------------------------------------------