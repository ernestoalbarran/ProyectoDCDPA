USE prueba
GO


create procedure AltaPeriodo
(
@Nombre_periodo varchar(25),
@Fecha_i smalldatetime,
@Fecha_f smalldatetime
)
as 
insert into Periodo(Nombre_periodo,Fecha_i,Fecha_f) values(@Nombre_periodo,@Fecha_i,@Fecha_f)
Go

CREATE PROCEDURE ObtenerPeriodoByNombre
(
@Nombre_periodo varchar(10)
)
as select IDPeriodo,Nombre_periodo,Fecha_i,Fecha_f from prueba where Nombre_periodo=@Nombre_periodo


CREATE procedure ActualizarPeriodo
(
@IDPeriodo int,
@Nombre_periodo varchar(10),
@Fecha_i smalldatetime,
@Fecha_f smalldatetime
)
as 
 update Periodo set Nombre_periodo=@Nombre_periodo,Fecha_i=@Fecha_i, Fecha_f=@Fecha_f where IDPeriodo=@IDPeriodo


CREATE procedure BorrarPeriodo
(
@IDPeriodo int
)
as delete Periodo where IDPeriodo=@IDPeriodo

CREATE procedure ObtenerPeriodos
as select IDPeriodo,Nombre_periodo,Fecha_i, Fecha_f from Periodo






alter table Periodo alter column Nombre_periodo varchar(25);