USE [PCEPI2]
GO

/****** Object:  Table [dbo].[proyectos_firmantes1]    Script Date: 12/17/2015 13:55:49 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[proyectos_firmantes1]') AND type in (N'U'))
DROP TABLE [dbo].[proyectos_firmantes1]
GO

USE [PCEPI2]
GO

/****** Object:  Table [dbo].[proyectos_firmantes1]    Script Date: 12/17/2015 13:55:49 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[proyectos_firmantes1](
	[plantel] [char](1) NULL,
	[area] [char](1) NULL,
	[pec] [nvarchar](50) NULL,
	[consejero1] [nvarchar](50) NULL,
	[consejero2] [nvarchar](50) NULL,
	[consejero3] [nvarchar](50) NULL,
	[consejero4] [nvarchar](50) NULL,
	[consejero5] [nvarchar](50) NULL,
	[consejero6] [nvarchar](50) NULL,
	[siglas] [nvarchar](20) NULL,
	[fecha_oficio] [smalldatetime] NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


