USE [PCEPI2]

GO

/****** Object:  Table [dbo].[proyectos_grupos1]    Script Date: 12/16/2015 16:02:04 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[proyectos_grupos1]') AND type in (N'U'))
DROP TABLE [dbo].[proyectos_grupos1]
GO

USE [PCEPI2]
GO

/****** Object:  Table [dbo].[proyectos_grupos1]    Script Date: 12/16/2015 16:02:04 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[proyectos_grupos1](
	[grupo] [char](4) NULL,
	[periodo] [char](9) NULL,
	[interarea] [char](1) NULL,
	[interplantel] [char](1) NULL,
	[p_asignatura] [char](1) NULL,
	[oficio] [char](4) NULL,
	[fecha_ev1] [smalldatetime] NULL,
	[fecha_ev2] [smalldatetime] NULL,
	[titulo] [varchar](400) NULL,
	[producto] [varchar](250) NULL,
	[campo] [char](1) NULL,
	[asignaturas] [varchar](100) NULL,
	[descripcion] [varchar](2500) NULL,
	[opinion_dir] [char](1) NULL,
	[observaciones] [varchar](500) NULL,
	[donde] [char](15) NULL,
	[quien] [char](15) NULL,
	[cuando] [datetime] NULL,
	[firma] [char](1) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


