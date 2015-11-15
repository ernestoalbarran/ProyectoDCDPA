USE [PCEPI2]
GO
/****** Object:  StoredProcedure [dbo].[SP_OBTENER_FIRMANTE]    Script Date: 11/15/2015 12:03:58 ******/
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
	@idArea AS SMALLINT
AS

SELECT RFC,NOMBRE,ID_PLANTEL,ID_AREA FROM [PCEPI2].[dbo].[PROFESOR] WHERE ID_AREA LIKE @idArea ORDER BY RFC