USE [PCEPI2]
GO
/****** Object:  StoredProcedure [dbo].[usp_ListProyecto_DeleteProyecto]    Script Date: 11/18/2015 21:07:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_ListProyecto_DeleteProyecto]
@Id int

AS
BEGIN
	DELETE FROM PROYECTO_MP WHERE PROYECTO_MP.ID_PROYECTO=@Id
	DELETE FROM PROYECTO WHERE PROYECTO.ID_PROYECTO=@Id
	
	END
