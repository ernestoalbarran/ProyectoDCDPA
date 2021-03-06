USE [PCEPI2]
GO
/****** Object:  StoredProcedure [dbo].[SP_OBTENER_INTEGRANTE]    Script Date: 01/14/2016 23:56:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[SP_OBTENER_INTEGRANTE]
	@ID_PLANTEL int,
	@ID_AREA int,
	@Opcion int	
AS	

declare @@var varchar(6)
declare @@var1 varchar(8)
SET @@var = CONVERT(varchar(6), @ID_PLANTEL)
set @@var1= CONVERT(varchar(8), @ID_AREA)


IF(@Opcion = 0)
	begin
		SELECT TP.RFC,TP.NOMBRE FROM PROFESOR AS TP 
		INNER JOIN CATEGORIA AS TC
		ON  TP.ID_CATEGORIA = TC.ID_CATEGORIA
		WHERE TC.DESCRIPCION_LARGA LIKE 'Profesor de Carrera%' 
			   AND TP.ID_PLANTEL LIKE '%' + @@var + '%' AND TP.area LIKE '%' + @@var1 + '%' and TP.inactivo !=0
		ORDER BY TP.NOMBRE
	end
ELSE IF(@Opcion = 1)
	begin
			SELECT TP.RFC,TP.NOMBRE FROM PROFESOR AS TP 
		INNER JOIN CATEGORIA AS TC
		ON  TP.ID_CATEGORIA = TC.ID_CATEGORIA
		WHERE TC.DESCRIPCION_LARGA LIKE 'Profesor de Carrera%' 
			   AND TP.ID_PLANTEL LIKE '%' + @@var + '%' and TP.inactivo !=0
			ORDER BY TP.NOMBRE
	end
ELSE IF(@Opcion = 2)
	begin
		SELECT TP.RFC,TP.NOMBRE FROM PROFESOR AS TP 
		INNER JOIN CATEGORIA AS TC
		ON  TP.ID_CATEGORIA = TC.ID_CATEGORIA
		WHERE TC.DESCRIPCION_LARGA LIKE 'Profesor de Carrera%' 
		AND TP.area LIKE '%' + @@var1 + '%' and TP.inactivo !=0
		ORDER BY TP.NOMBRE
	end
ELSE IF(@Opcion = 3)
	begin
		SELECT TP.RFC,TP.NOMBRE FROM PROFESOR AS TP 
		INNER JOIN CATEGORIA AS TC
		ON  TP.ID_CATEGORIA = TC.ID_CATEGORIA
		WHERE TC.DESCRIPCION_LARGA LIKE 'Profesor de Carrera%' 
			   and TP.inactivo !=0
		ORDER BY TP.NOMBRE
	end
ELSE IF(@Opcion = 4)
	begin
		SELECT TP.RFC,TP.NOMBRE FROM PROFESOR AS TP 
		INNER JOIN CATEGORIA AS TC
		ON  TP.ID_CATEGORIA = TC.ID_CATEGORIA
		WHERE TC.DESCRIPCION_LARGA LIKE 'Profesor de Carrera%' OR TC.DESCRIPCION_LARGA LIKE 'Profesor Asignatura%' 
			   AND TP.ID_PLANTEL LIKE '%' + @@var + '%' AND TP.area LIKE '%' + @@var1 + '%' and TP.inactivo !=0
		ORDER BY TP.NOMBRE
	end
ELSE IF(@Opcion = 5)
	begin
		SELECT TP.RFC,TP.NOMBRE FROM PROFESOR AS TP 
		INNER JOIN CATEGORIA AS TC
		ON  TP.ID_CATEGORIA = TC.ID_CATEGORIA
		WHERE TC.DESCRIPCION_LARGA LIKE 'Profesor de Carrera%' OR TC.DESCRIPCION_LARGA LIKE 'Profesor Asignatura%' 
			   AND TP.ID_PLANTEL LIKE '%' + @@var + '%' AND TP.area not LIKE '%' + '9' + '%' and TP.inactivo !=0
		ORDER BY TP.NOMBRE
	end
ELSE IF(@Opcion = 6)
	begin
		SELECT TP.RFC,TP.NOMBRE FROM PROFESOR AS TP 
		INNER JOIN CATEGORIA AS TC
		ON  TP.ID_CATEGORIA = TC.ID_CATEGORIA
		WHERE TC.DESCRIPCION_LARGA LIKE 'Profesor de Carrera%' OR TC.DESCRIPCION_LARGA LIKE 'Profesor Asignatura%' 
			   AND TP.ID_PLANTEL not LIKE '%' + '6' + '%' AND TP.area not LIKE '%' + @@var1 + '%' and TP.inactivo !=0
		ORDER BY TP.NOMBRE
	end
ELSE IF(@Opcion = 7)
	begin
		SELECT TP.RFC,TP.NOMBRE FROM PROFESOR AS TP 
		INNER JOIN CATEGORIA AS TC
		ON  TP.ID_CATEGORIA = TC.ID_CATEGORIA
		WHERE TC.DESCRIPCION_LARGA LIKE 'Profesor de Carrera%' OR TC.DESCRIPCION_LARGA LIKE 'Profesor Asignatura%' 
			   AND TP.ID_PLANTEL not LIKE '%' + '6' + '%' AND TP.area not LIKE '%' + '9' + '%' and TP.inactivo !=0
		ORDER BY TP.NOMBRE
	end
