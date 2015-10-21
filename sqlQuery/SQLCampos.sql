USE PCEPI2
GO


create table Campos
(
IDCampo int not null identity(1,1),
Des_Corta nvarchar (100),
Des_Larga nvarchar (400),
constraint PK_IDCampo Primary key (IDCampo)
)
create procedure AltasCampos
(
@Des_Corta varchar (100),
@Des_Larga varchar (400)	
)
as
	insert into Campos(Des_Corta, Des_Larga) values (@Des_Corta, @Des_Larga)
	
	
	create procedure BorrarCampo
	(
	@IDCampo int
	)
	as
		delete Campos where  IDCampo=@IDCampo
	
	create procedure ObtenerCampo
	as
	select IDCampo, Des_Corta, Des_Larga from Campos
	
	create Procedure ObtenerCampoByyID
	(
	@IDCampo int
	)	
	as
		select IDCampo, Des_Corta, Des_Larga from Campos where IDCampo=@IDCampo
	
	
	create procedure ActualizarCampo
	(
	@IDCampo int,
	@Des_Corta nvarchar (100),
	@Des_Larga nvarchar (400)
	)
	as
	update Campos set  Des_Corta=@Des_Corta, Des_Larga=@Des_Larga where IDCampo=@IDCampo
	
	