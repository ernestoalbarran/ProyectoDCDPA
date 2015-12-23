USE [PCEPI2]
GO

IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_proyectos_integrantes1_bandera]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[proyectos_integrantes1] DROP CONSTRAINT [DF_proyectos_integrantes1_bandera]
END

GO

USE [PCEPI2]
GO

/****** Object:  Table [dbo].[proyectos_integrantes1]    Script Date: 12/16/2015 16:04:07 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[proyectos_integrantes1]') AND type in (N'U'))
DROP TABLE [dbo].[proyectos_integrantes1]
GO

USE [PCEPI2]
GO

/****** Object:  Table [dbo].[proyectos_integrantes1]    Script Date: 12/16/2015 16:04:07 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[proyectos_integrantes1](
	[rfc] [char](13) NULL,
	[grupo] [char](4) NULL,
	[periodo] [char](9) NULL,
	[invitado] [char](20) NULL,
	[coordinador] [char](1) NULL,
	[presidente] [int] NULL,
	[secretario] [int] NULL,
	[sabatico] [int] NULL,
	[bandera] [int] NULL,
	[oficio] [char](4) NULL,
	[fecha_ev1] [smalldatetime] NULL,
	[fecha_ev2] [smalldatetime] NULL,
	[perfil] [char](2) NULL,
	[area_basica] [varchar](100) NULL,
	[area_complementaria] [varchar](100) NULL,
	[descripcion] [varchar](3000) NULL,
	[observacion] [varchar](500) NULL,
	[opinion_dir] [char](1) NULL,
	[fundamentacion] [varchar](5000) NULL,
	[evaluacion] [char](1) NULL,
	[donde] [char](15) NULL,
	[quien] [char](15) NULL,
	[cuando] [datetime] NULL,
	[firma1] [char](1) NULL,
	[firma2] [char](1) NULL,
	[correccion] [char](1) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[proyectos_integrantes1] ADD  CONSTRAINT [DF_proyectos_integrantes1_bandera]  DEFAULT ((1)) FOR [bandera]
GO


