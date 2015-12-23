USE [PCEPI2]
GO

IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__LEMA_PERI__ID_LE__3F115E1A]') AND parent_object_id = OBJECT_ID(N'[dbo].[LEMA_PERIODO]'))
ALTER TABLE [dbo].[LEMA_PERIODO] DROP CONSTRAINT [FK__LEMA_PERI__ID_LE__3F115E1A]
GO

IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__LEMA_PERI__ID_PE__40058253]') AND parent_object_id = OBJECT_ID(N'[dbo].[LEMA_PERIODO]'))
ALTER TABLE [dbo].[LEMA_PERIODO] DROP CONSTRAINT [FK__LEMA_PERI__ID_PE__40058253]
GO

IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__LEMA_PERI__ID_PL__40F9A68C]') AND parent_object_id = OBJECT_ID(N'[dbo].[LEMA_PERIODO]'))
ALTER TABLE [dbo].[LEMA_PERIODO] DROP CONSTRAINT [FK__LEMA_PERI__ID_PL__40F9A68C]
GO

USE [PCEPI2]
GO

/****** Object:  Table [dbo].[LEMA_PERIODO]    Script Date: 12/21/2015 13:19:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LEMA_PERIODO]') AND type in (N'U'))
DROP TABLE [dbo].[LEMA_PERIODO]
GO

USE [PCEPI2]
GO

/****** Object:  Table [dbo].[LEMA_PERIODO]    Script Date: 12/21/2015 13:19:16 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[LEMA_PERIODO](
	[ID_LEMA] [int] NOT NULL,
	[ID_PERIODO] [int] NOT NULL,
	[ID_AREA] [int] NULL,
	[ID_PLANTEL] [int] NULL
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[LEMA_PERIODO]  WITH CHECK ADD FOREIGN KEY([ID_LEMA])
REFERENCES [dbo].[LEMA] ([ID_LEMA])
GO

ALTER TABLE [dbo].[LEMA_PERIODO]  WITH CHECK ADD FOREIGN KEY([ID_PERIODO])
REFERENCES [dbo].[PERIODO] ([ID_PERIODO])
GO

ALTER TABLE [dbo].[LEMA_PERIODO]  WITH CHECK ADD FOREIGN KEY([ID_PLANTEL])
REFERENCES [dbo].[PLANTEL] ([ID_PLANTEL])
GO


