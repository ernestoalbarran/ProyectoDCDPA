USE [PCEPI2]
GO
/****** Object:  StoredProcedure [dbo].[sp_Obtener_Plantel]    Script Date: 01/08/2016 16:09:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		ENFOKE
-- Description:	<Obtener el nombre del Plantel a partir del ID del Plantel>
-- =============================================

Alter PROCEDURE [dbo].[sp_Obtener_Plantel] 
	@Id_Plantel as int	
AS
BEGIN

	SELECT NOMBRE from PLANTEL WHERE ID_PLANTEL=@Id_Plantel
END