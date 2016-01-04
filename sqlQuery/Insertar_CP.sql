USE [PCEPI2]
GO
/****** Object:  StoredProcedure [dbo].[INSERTAR_LP]    Script Date: 01/04/2016 00:14:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[INSERTAR_CP]
(
@Des_Corta char(40),
@Des_Larga varchar(2100),
@IDCampo int,
@ID_PERIODO int
)
AS INSERT INTO Campos(Des_Corta,Des_Larga) values(@Des_Corta,@Des_Larga)
INSERT INTO CAMPO_PERIODO(IDCampo,ID_PERIODO) VALUES (@IDCampo,@ID_PERIODO)
