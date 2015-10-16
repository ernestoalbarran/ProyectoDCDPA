Use PCEPI2
GO

ALTER procedure AltaLema
(
@TITULO char(40),
@DESCRIPCION varchar(2100)
)
as 
insert into Lema(TITULO,DESCRIPCION) values(@TITULO,@DESCRIPCION)


ALTER PROCEDURE ObtenerLemaByTitulo
(
@TITULO char(40)
)
as select ID_LEMA,TITULO,DESCRIPCION from PCEPI2 where TITULO=@TITULO

ALTER procedure ActualizarLema
(
@ID_LEMA smallint, 
@TITULO char(40),
@DESCRIPCION varchar(2100)
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
