USE [PCEPI2]
GO
/****** Object:  StoredProcedure [dbo].[SP_FILTRAR_MATERIA]    Script Date: 11/19/2015 16:57:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--==================================================
-- Author:		enFOKE
-- Create date:	27/OCT/2015
-- Description:	Procedimiento que filtra las materias por área
--==================================================

ALTER PROCEDURE [dbo].[SP_FILTRAR_MATERIA]
	@Id_Area AS SMALLINT
	--,
	--@msg AS VARCHAR(100) OUTPUT
	
AS
BEGIN

	--Begin Tran Tadd
	
	--Begin Try
		SELECT AREA.ID_AREA, AREA.NOMBRE_CORTO AS 'AREA', MATERIA.MATERIA40 FROM AREA INNER JOIN MATERIA ON AREA.ID_AREA = MATERIA.AREA WHERE AREA.ID_AREA LIKE @Id_Area order by AREA.ID_AREA
	--End Try
	--Begin Catch
	--	SET @msg = 'Ocurrió un error: ' + ERROR_MESSAGE() + 'en línea ' + CONVERT(NVARCHAR(255), ERROR_LINE())
	--End Catch
END
