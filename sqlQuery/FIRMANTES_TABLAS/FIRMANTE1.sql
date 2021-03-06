USE [PCEPI2]
GO

/****** Object:  Table [dbo].[FIRMANTE1]    Script Date: 01/18/2016 17:53:58 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FIRMANTE1](
	[ID_FIRMANTE1] [int] IDENTITY(1,1) NOT NULL,
	[RFC_PEC] [nvarchar](13) NOT NULL,
	[RFC_CONSEJERO1] [nvarchar](13) NULL,
	[RFC_CONSEJERO2] [nvarchar](13) NULL,
	[RFC_CONSEJERO3] [nvarchar](13) NULL,
	[RFC_CONSEJERO4] [nvarchar](13) NULL,
	[RFC_CONSEJERO5] [nvarchar](13) NULL,
	[RFC_CONSEJERO6] [nvarchar](13) NULL,
	[SIGLAS] [nchar](10) NOT NULL,
	[FECHA_OFICIO] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_FIRMANTE1] PRIMARY KEY CLUSTERED 
(
	[ID_FIRMANTE1] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


