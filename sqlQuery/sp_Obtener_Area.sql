USE [PCEPI2]
GO
/****** Object:  StoredProcedure [dbo].[sp_Proyectos_Activo]    Script Date: 01/08/2016 16:09:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		ENFOKE
-- Description:	<Obtener el nombre del Area a partir del ID del Area>
-- =============================================

ALTER PROCEDURE [dbo].[sp_Obtener_Area] 

	@Id_Area as int

	
AS
BEGIN

	SELECT NOMBRE_CORTO from AREA WHERE ID_AREA=@Id_Area
END