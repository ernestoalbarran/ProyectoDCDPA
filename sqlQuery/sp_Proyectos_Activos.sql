USE [PCEPI2]
GO
/****** Object:  StoredProcedure [dbo].[sp_Proyectos_Activo]    Script Date: 01/08/2016 16:09:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================

ALTER PROCEDURE [dbo].[sp_Proyectos_Activo] 

	@periodoletra as varchar(60)

	
AS
BEGIN

	SELECT activo from Activos WHERE periodoletra=@periodoletra
END
