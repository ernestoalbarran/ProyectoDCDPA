CREATE DATABASE prueba
GO

USE prueba
GO

CREATE TABLE [dbo].[Lemas]
(
IDLema int primary key identity (1,1) not null,
titulo char(40) not null,
descripcion varchar(2100) not null,
)
GO

ALTER procedure AltaLema
(
@titulo char(40),
@descripcion varchar(2100)
)
as 
insert into Lemas(titulo,descripcion) values(@titulo,@descripcion)


ALTER PROCEDURE ObtenerLemaByTitulo
(
@titulo char(40)
)
as select IDLemas,titulo,descripcion from prueba where titulo=@titulo

ALTER procedure ActualizarLema
(
@IDLema int, 
@titulo char(40),
@descripcion varchar(2100)
)
as 
 update Lemas set titulo=@titulo,descripcion=@descripcion where IDLema=@IDLema

ALTER procedure BorrarLema
(
@IDLema int
)
as delete Lemas where IDLema=@IDLema

CREATE procedure ObtenerLemas
as select IDLema,titulo,descripcion from Lemas

