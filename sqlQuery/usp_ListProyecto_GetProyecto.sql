USE [PCEPI2]
GO
/****** Object:  StoredProcedure [dbo].[usp_ListProyecto_GetProyecto]    Script Date: 11/18/2015 21:07:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_ListProyecto_GetProyecto]

AS
BEGIN
	Select ID_PROYECTO, PLANTEL, PERIODO, TITULO from PROYECTO 
END
