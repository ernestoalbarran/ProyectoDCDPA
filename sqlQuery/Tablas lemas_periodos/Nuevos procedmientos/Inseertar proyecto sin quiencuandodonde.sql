/****En cualquiera de los procedimientos encontraran alter o create, si tienen algun problemade ben de observar:
1.-Si el procedimiento no se encuentra ya creado
2.- si el procedimiento no existe, falla el alter.
****/

USE [PCEPI2]
GO

/****** Object:  StoredProcedure [dbo].[usp_Insertar_Proyectogrupos1]    Script Date: 01/04/2016 13:12:50 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


ALTER PROCEDURE [dbo].[usp_Insertar_Proyectogrupos1]
(
	@grupo char(4),
	@periodo char(9),
	@interarea char(1),
	@interplantel char(1),
	@p_asignatura char(1),
	@oficio char(4),
	@fecha_ev1 smalldatetime,
	--@fecha_ev2 smalldatetime,
	@titulo varchar(400),
	@producto varchar(250),
	@campo char(1),
	@asignaturas varchar(100),
	@descripcion varchar(2500),
	@opinion_dir char(1),
	@observaciones varchar(500),	
	--@donde char(15),
	--@quien char(15),
	--@cuando datetime, 
	--@firma char(1)
	@values_insert varchar(7500)
)
AS
BEGIN
	-- todo lo que esta comentado se elimina ya que solo este procedimiento sirve para almacenar lo obtenido del formulario proyecto 
	-- sin los profesores.
	--DECLARE @AREA int
	--DECLARE @PERIODOT varchar(20)
	--DECLARE @ID int
	--DECLARE @RFC varchar(13)
	--DECLARE @ID_MATERIA char(4)  
	
	--Select @PERIODOT=NOMBRE_PERIODO from PERIODO where NOMBRE_PERIODO=@PERIODO
	--Select @ID_MATERIA=ID_MATERIA from MATERIA where MATERIA40=@MATERIA
	--Select @RFC=RFC from PROFESOR where NOMBRE=@PROFESOR	
	
	BEGIN TRANSACTION insertar_proy_prof
	BEGIN TRY	
	
		insert into proyectos_grupos1(grupo,periodo,interarea,interplantel,p_asignatura,oficio,fecha_ev1,titulo,producto,campo,asignaturas,descripcion,opinion_dir,observaciones)
		values(@grupo,@periodo, @interarea, @interplantel, @p_asignatura, @oficio, @fecha_ev1, @titulo, @producto, @campo, @asignaturas, @descripcion, @opinion_dir, @observaciones)		
			
		DECLARE @insertProfesores AS VARCHAR(8000)
		SET @insertProfesores = 'INSERT INTO  proyectos_integrantes1(rfc, grupo, periodo, coordinador, perfil)' + @values_insert
		                                    
		EXEC(@insertProfesores)	
		COMMIT TRANSACTION insertar_proy_prof
		
		SELECT 1 AS RESULTADO
		
	END TRY
	BEGIN CATCH
	
		ROLLBACK TRANSACTION insertar_proy_prof
		SELECT 0 AS RESULTADO
	
	END CATCH	
	
END

GO


