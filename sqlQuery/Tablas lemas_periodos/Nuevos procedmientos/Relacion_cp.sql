USE [PCEPI2]
GO
/****** Object:  StoredProcedure [dbo].[RELACION_CP]    Script Date: 01/18/2016 10:38:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[RELACION_CP]
(
@Des_Corta char(40),
@Des_Larga varchar(2100),
@ID_PERIODO int
)
AS 
BEGIN TRAN t1;
IF(@Des_Corta IS NULL OR @Des_Larga IS NULL OR @ID_PERIODO IS NULL)
	BEGIN
		PRINT N'VARIABLES NULAS';
	END   
ELSE
	BEGIN	
		INSERT INTO Campos(Des_Corta,Des_Larga) values(@Des_Corta,@Des_Larga)
		declare @IDC int;
		SELECT @IDC=MAX(IDCampo) from Campos where Des_Corta=@Des_Corta and Des_Larga=@Des_Larga;
		INSERT INTO CAMPO_PERIODO(IDCampo,ID_PERIODO) VALUES (@IDC,@ID_PERIODO)
	END
COMMIT TRAN t1;
