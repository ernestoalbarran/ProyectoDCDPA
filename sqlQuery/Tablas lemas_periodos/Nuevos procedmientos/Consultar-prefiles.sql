USE [PCEPI2]
GO
/****** Object:  StoredProcedure [dbo].[sp_consultar_perfiles]    Script Date: 01/11/2016 15:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[sp_consultar_perfiles]
AS

SELECT ID_PERFIL, DESCRIPCION
FROM dbo.PERFIL

