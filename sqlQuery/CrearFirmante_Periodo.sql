USE [PCEPI2]
GO

/****** Object:  Table [dbo].[FIRMANTE1_PERIODO]    Script Date: 01/11/2016 17:45:11 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FIRMANTE1_PERIODO](
	[ID_FIRMANTE1] [int] IDENTITY(1,1) NOT NULL,
	[ID_PLANTEL] [int] NOT NULL,
	[ID_AREA] [int] NOT NULL,
	[ID_PERIODO] [int] NOT NULL,
 CONSTRAINT [PK2_FIRMANTE1] PRIMARY KEY CLUSTERED 
(
	[ID_FIRMANTE1] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO