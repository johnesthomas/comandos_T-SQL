SELECT * FROM DEPARTAMENTO

CREATE PROCEDURE uSP_INTERT_DEPARTAMENTO -- ALTER PARA ALTERAR CODIGO DA PROCEDURE
(@DESCRICAO VARCHAR(50))

AS

BEGIN
	INSERT INTO DEPARTAMENTO (DESCRICAO)
	VALUES(@DESCRICAO)
END

EXEC uSP_INTERT_DEPARTAMENTO 'PLANEJAMENTO' -- OU

EXEC uSP_INTERT_DEPARTAMENTO 'MARKETING' -- OU

uSP_INTERT_DEPARTAMENTO 'COMUNICAÇÃO'

-------------------------------------------------------

CREATE PROC uSP_VALIDA_IDADE
(@DATANASCIMENTO DATE)

AS

BEGIN
	IF DATEDIFF(YEAR, @DATANASCIMENTO, GETDATE()) > 18
	PRINT 'VOCE É DE MAIOR'
	ELSE 
	PRINT 'NÃO É DE MAIOR'
END

EXEC uSP_VALIDA_IDADE @DATANASCIMENTO = '2005-03-03'

-------------------------------------------------------

CREATE PROC uSP_DELETAR_DEPT
(@COD INT)

AS
BEGIN
	

END

-------------------------------------------------------

CREATE PROC uSP_PROC_FERIAS
AS
BEGIN
	SELECT * FROM FUNCIONARIO
	WHERE INICIOFERIAS IS NOT NULL
END

EXEC uSP_PROC_FERIAS

-------------------------------------------------------


