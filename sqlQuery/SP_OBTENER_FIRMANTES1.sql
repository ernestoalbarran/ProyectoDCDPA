USE [PCEPI2]
GO
/****** Object:  StoredProcedure [dbo].[SP_OBTENER_FIRMANTE1]    Script Date: 01/10/2016 18:34:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--==================================================
-- Author:		enFOKE
-- Create date:	28/OCT/2015
-- Description:	Procedimiento que muestra la lista de profesores que pueden
-- ser seleccionados como integrantes del grupo de trabajo
--=========================================
ALTER PROCEDURE [dbo].[SP_OBTENER_FIRMANTE1]
	@idPlantel AS SMALLINT,
	@idArea AS SMALLINT

AS

SELECT RFC,NOMBRE,ID_PLANTEL,ID_AREA FROM [PCEPI2].[dbo].[PROFESOR] WHERE (ID_PLANTEL LIKE @idPlantel)AND (ID_AREA LIKE @idArea )  
UNION
SELECT '', '--Elige alguna opción--', 0, 0
ORDER BY RFC