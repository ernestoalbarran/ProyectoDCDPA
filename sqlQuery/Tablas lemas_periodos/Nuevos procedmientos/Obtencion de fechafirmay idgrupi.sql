USE [PCEPI2]
GO
/****** Object:  StoredProcedure [dbo].[usp_Obtener_FechaEv_NumGrupo]    Script Date: 01/09/2016 11:22:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[usp_Obtener_FechaEv_NumGrupo]
(
	@PERIODO char(9),
	@PLANTEL char(1),
	@ID_AREA char(1),
	@Fecha   varchar(10) OUTPUT,
	@Grupo   varchar(2) OUTPUT
)
as
BEGIN
 
 Declare @exist char(4); 
 Declare @Grupo1 char (2)
 
select @Fecha = convert(varchar(10),fecha_oficio,103)
from dbo.proyectos_firmantes1 where plantel=@PLANTEL AND area=@ID_AREA

select @exist=grupo 
from dbo.proyectos_grupos1 where periodo = @PERIODO and substring(grupo,1,1) = @PLANTEL  
and substring(grupo,2,1) = @ID_AREA;

	if(@exist is NULL)
	 begin
		select @Grupo = '01'
	 end 
	else 
		begin
			select @Grupo = CONVERT(char(2),'0'+ CAST(SUBSTRING(@exist,3,2) as INT)+1)
			if(@Grupo < 9)
				begin
					select @Grupo='0'+@Grupo
				end
		end
select Fecha=@Fecha,Grupo=@Grupo ;
 
END