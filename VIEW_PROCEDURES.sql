CREATE VIEW uVW_LISTA_NOME_TELEF_ALUNO
AS
SELECT 
A.nome_aluno,
A.telefone_aluno
FROM aluno AS A

SELECT * FROM uVW_LISTA_NOME_TELEF_ALUNO

CREATE PROC uSP_DADOS_CONTRATO_ALUNO
AS
BEGIN
SELECT
A.nome_aluno AS 'NOME DO ALUNO',
CASE 
 WHEN CT.tipo_contrato = 'A' THEN 'ANUAL'
 WHEN CT.tipo_contrato = 'S' THEN 'SEMESTRAL'
 WHEN CT.tipo_contrato = 'T' THEN 'TRIMESTRAL'
 WHEN CT.tipo_contrato = 'M' THEN 'MENSAL'
END AS 'TIPO DE CONTRATO'

FROM aluno AS A
	INNER JOIN contrato AS CT
	ON A.cd_matricula = CT.cd_matricula
END

EXEC uSP_DADOS_CONTRATO_ALUNO