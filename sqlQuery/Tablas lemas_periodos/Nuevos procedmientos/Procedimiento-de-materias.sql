USE [PCEPI2]
GO
/****** Object:  StoredProcedure [dbo].[SP_FILTRAR_MATERIA]    Script Date: 12/23/2015 16:46:39 ******/
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
		SELECT MATERIA.ID_MATERIA, MATERIA.MATERIA40, AREA.ID_AREA, AREA.NOMBRE_CORTO AS 'AREA'  FROM MATERIA INNER JOIN AREA ON AREA.ID_AREA = MATERIA.AREA WHERE AREA.ID_AREA LIKE @Id_Area order by AREA.ID_AREA
	--End Try
	--Begin Catch
	--	SET @msg = 'Ocurrió un error: ' + ERROR_MESSAGE() + 'en línea ' + CONVERT(NVARCHAR(255), ERROR_LINE())
	--End Catch
END
