USE PCEPI2
GO


CREATE PROCEDURE RELACION_CP
(
@IDCampo int,
@ID_PERIODO int
)
AS INSERT INTO CAMPO_PERIODO(IDCampo,ID_PERIODO) VALUES (@IDCampo,@ID_PERIODO)


ALTER PROCEDURE RELACION_CP
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
GO
           
