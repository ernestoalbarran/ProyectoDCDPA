USE [PCEPI2]
GO
/****** Object:  StoredProcedure [dbo].[sp_Campos_ddl]    Script Date: 01/18/2016 10:39:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[sp_Campos_ddl]
@Id_Proyecto AS int
AS

select camp.IDCampo, camp.Des_Corta from Campos as camp inner join dbo.Campo_Periodo as C_P

on camp.IDCampo=C_P.IDCampo where C_P.ID_PERIODO=@Id_Proyecto
