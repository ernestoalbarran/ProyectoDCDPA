USE [PCEPI2]
GO
/****** Object:  StoredProcedure [dbo].[SP_FILTRAR_MATERIA]    Script Date: 01/06/2016 15:44:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--==================================================
-- Author:		enFOKE
-- Create date:	27/OCT/2015
-- Description:	Procedimiento que filtra las materias por área
--==================================================

Create PROCEDURE [dbo].[SP_Obtener_Materia40_LowerCase]
	@Id_Area AS SMALLINT
	--,
	--@msg AS VARCHAR(100) OUTPUT
	
AS
BEGIN

	--Begin Tran Tadd
	
	--Begin Try
		SELECT MATERIA.ID_MATERIA, MATERIA.MATERIA40, AREA.ID_AREA, AREA.NOMBRE_CORTO AS 'AREA'  FROM MATERIA INNER JOIN AREA ON AREA.ID_AREA = MATERIA.AREA WHERE AREA.ID_AREA LIKE @Id_Area  and 
		MATERIA40 COLLATE Latin1_General_CS_AI != UPPER(MATERIA40) and
		MATERIA40 COLLATE Latin1_General_CS_AI !=LOWER(MATERIA40) 
		SELECT MATERIA.ID_MATERIA, MATERIA.MATERIA40, AREA.ID_AREA, AREA.NOMBRE_CORTO AS 'AREA'  FROM MATERIA INNER JOIN AREA ON AREA.ID_AREA = MATERIA.AREA WHERE AREA.ID_AREA LIKE @Id_Area  and
		BINARY_CHECKSUM(MATERIA40)!=BINARY_CHECKSUM(UPPER(MATERIA40)) and
		BINARY_CHECKSUM(MATERIA40) != BINARY_CHECKSUM(LOWER(MATERIA40))
		order by AREA.ID_AREA
	--End Try
	--Begin Catch
	--	SET @msg = 'Ocurrió un error: ' + ERROR_MESSAGE() + 'en línea ' + CONVERT(NVARCHAR(255), ERROR_LINE())
	--End Catch
END