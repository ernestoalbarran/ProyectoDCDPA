USE [PCEPI2]
GO

/****** Object:  Table [dbo].[LEMA]    Script Date: 12/21/2015 13:18:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LEMA]') AND type in (N'U'))
DROP TABLE [dbo].[LEMA]
GO

USE [PCEPI2]
GO

/****** Object:  Table [dbo].[LEMA]    Script Date: 12/21/2015 13:18:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[LEMA](
	[ID_LEMA] [int] IDENTITY(1,1) NOT NULL,
	[TITULO] [char](3000) NOT NULL,
	[DESCRIPCION] [char](3000) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_LEMA] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


