Use PCEPI2
GO

create procedure AltaLema
(
@titulo char(40),
@descripcion varchar(2100)
)
as 
insert into Lema(TITULO,DESCRIPCION) values(@TITULO,@DESCRIPCION)


CREATE PROCEDURE ObtenerLemaByTitulo
(
@titulo char(40)
)
as select ID_Lema,titulo,descripcion from PCEPI2 where titulo=@titulo

CREATE procedure ActualizarLema
(
@ID_LEMA smallint, 
@titulo char(40),
@descripcion varchar(2100)
)
as 
 update Lema set TITULO=@TITULO,DESCRIPCION=@DESCRIPCION where ID_LEMA=@ID_LEMA
 
 CREATE procedure BorrarLema
(
@ID_LEMA smallint
)
as delete Lema where ID_LEMA=@ID_LEMA

CREATE procedure ObtenerLemas
as select ID_LEMA,TITULO,DESCRIPCION from LEMA
