USE [PCEPI2]
GO
/****** Object:  StoredProcedure [dbo].[sp_profesor_carrera]    Script Date: 01/11/2016 15:19:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[sp_profesor_carrera]
@rfc AS VARCHAR(13)
AS

IF EXISTS(
	SELECT DESCRIPCION_LARGA
	FROM PROFESOR AS PRO
	INNER JOIN CATEGORIA AS CAT
	ON PRO.ID_CATEGORIA = CAT.ID_CATEGORIA
	WHERE PRO.RFC = @rfc
	AND CAT.DESCRIPCION_LARGA LIKE 'Profesor de Carrera%'
)
BEGIN
	SELECT 1 AS ProfCarr
END
ELSE
BEGIN
	SELECT 0 AS ProfCarr
END 

