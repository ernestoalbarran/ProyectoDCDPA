USE [PCEPI2]
GO
/****** Object:  StoredProcedure [dbo].[SP_OBTENER_INTEGRANTE]    Script Date: 11/18/2015 19:06:17 ******/
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

ALTER PROCEDURE [dbo].[SP_OBTENER_INTEGRANTE]
	@idArea AS SMALLINT
AS

