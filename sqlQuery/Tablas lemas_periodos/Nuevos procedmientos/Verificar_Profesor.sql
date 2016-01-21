USE [PCEPI2]
GO
/****** Object:  StoredProcedure [dbo].[usp_verificar_profesor]    Script Date: 01/15/2016 15:54:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Ernesto,enFOKE>
-- =============================================
ALTER PROCEDURE  [dbo].[usp_verificar_profesor]
	@RFC char(13)
AS
IF EXISTS( SELECT rfc FROM proyectos_integrantes1 where rfc=@RFC)
	SELECT 1 AS RESULTADO
	
ELSE
	SELECT 0 AS RESULTADO