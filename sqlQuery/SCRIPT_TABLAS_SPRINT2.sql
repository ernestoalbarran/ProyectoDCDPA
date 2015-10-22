USE [PCEPI2]

CREATE TABLE [dbo].[CATEGORIA](
	[ID_CATEGORIA] [smallint] NOT NULL,
	[DESCRIPCION_LARGA] [nvarchar](100) NOT NULL,
	[ABREVIACION1] [nvarchar](100) NULL,
	[ABREVIACION2] [nvarchar](100) NULL,
	[CVE_CATEGORIA] [nvarchar](50) NULL,
	[CI_CATEGORIA] [nvarchar](50) NULL,
	[CVE_CATEGORIA_2] [nvarchar](50) NULL,
	[ORDENAR] [smallint] NULL,
 CONSTRAINT [PK_CATEGORIA] PRIMARY KEY CLUSTERED 
(
	[ID_CATEGORIA] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

INSERT INTO [PCEPI2].[dbo].[CATEGORIA] ([ID_CATEGORIA] ,[DESCRIPCION_LARGA],[ABREVIACION1],[ABREVIACION2],[CVE_CATEGORIA],[CI_CATEGORIA],[CVE_CATEGORIA_2], [ORDENAR]) VALUES (19, 'T�cnico Acad�mico Auxiliar "B" de Tiempo Completo Definitivo','Tec. Acad. Aux. "B" Def.','Tec. Aux. B Def.','TIBD','D-7544D','T3B3',33)
INSERT INTO [PCEPI2].[dbo].[CATEGORIA] ([ID_CATEGORIA] ,[DESCRIPCION_LARGA],[ABREVIACION1],[ABREVIACION2],[CVE_CATEGORIA],[CI_CATEGORIA],[CVE_CATEGORIA_2], [ORDENAR]) VALUES (20, 'T�cnico Acad�mico Auxiliar "C" de Tiempo Completo Definitivo','Tec. Acad. Aux. "C" Def.','Tec. Aux. C Def.','TICD','D-7658D','T3C3',34)
INSERT INTO [PCEPI2].[dbo].[CATEGORIA] ([ID_CATEGORIA] ,[DESCRIPCION_LARGA],[ABREVIACION1],[ABREVIACION2],[CVE_CATEGORIA],[CI_CATEGORIA],[CVE_CATEGORIA_2], [ORDENAR]) VALUES (21, 'T�cnico Acad�mico Asociado "A" de Tiempo Completo Definitivo','Tec. Acad. Asoc. "A" Def.','Tec. Asoc. A Def.','TSAD','D-8467D','T5A3',41)
INSERT INTO [PCEPI2].[dbo].[CATEGORIA] ([ID_CATEGORIA] ,[DESCRIPCION_LARGA],[ABREVIACION1],[ABREVIACION2],[CVE_CATEGORIA],[CI_CATEGORIA],[CVE_CATEGORIA_2], [ORDENAR]) VALUES (22, 'T�cnico Acad�mico Asociado "B" de Tiempo Completo Definitivo','Tec. Acad. Asoc. "B" Def.','Tec. Asoc. B Def.','TSBD','D-8578D','T5B3',42)
INSERT INTO [PCEPI2].[dbo].[CATEGORIA] ([ID_CATEGORIA] ,[DESCRIPCION_LARGA],[ABREVIACION1],[ABREVIACION2],[CVE_CATEGORIA],[CI_CATEGORIA],[CVE_CATEGORIA_2], [ORDENAR]) VALUES (23, 'T�cnico Acad�mico Asociado "C" de Tiempo Completo Definitivo','Tec. Acad. Asoc. "C" Def.','Tec. Asoc. C Def.','TSCD','D-8682D','T5C3',43)
INSERT INTO [PCEPI2].[dbo].[CATEGORIA] ([ID_CATEGORIA] ,[DESCRIPCION_LARGA],[ABREVIACION1],[ABREVIACION2],[CVE_CATEGORIA],[CI_CATEGORIA],[CVE_CATEGORIA_2], [ORDENAR]) VALUES (24, 'T�cnico Acad�mico Titular "A" de Tiempo Completo Definitivo','Tec. Acad. Tit. "A" Def.','Tec. Tit. A Def.','TTAD','D-9484D','T6A3',50)
INSERT INTO [PCEPI2].[dbo].[CATEGORIA] ([ID_CATEGORIA] ,[DESCRIPCION_LARGA],[ABREVIACION1],[ABREVIACION2],[CVE_CATEGORIA],[CI_CATEGORIA],[CVE_CATEGORIA_2], [ORDENAR]) VALUES (25, 'T�cnico Acad�mico Titular "B" de Tiempo Completo Definitivo','Tec. Acad. Tit. "B" Def.','Tec. Tit. B Def.','TTBD','D-9585D','T6B3',51)
INSERT INTO [PCEPI2].[dbo].[CATEGORIA] ([ID_CATEGORIA] ,[DESCRIPCION_LARGA],[ABREVIACION1],[ABREVIACION2],[CVE_CATEGORIA],[CI_CATEGORIA],[CVE_CATEGORIA_2], [ORDENAR]) VALUES (26, 'T�cnico Acad�mico Titular "C" de Tiempo Completo Definitivo','Tec. Acad. Tit. "C" Def.','Tec. Tit. C Def.','TTCD','D-9689D','T6C3',52)
INSERT INTO [PCEPI2].[dbo].[CATEGORIA] ([ID_CATEGORIA] ,[DESCRIPCION_LARGA],[ABREVIACION1],[ABREVIACION2],[CVE_CATEGORIA],[CI_CATEGORIA],[CVE_CATEGORIA_2], [ORDENAR]) VALUES (27, 'T�cnico Acad�mico Auxiliar "A" de Tiempo Completo a Contrato','Tec. Acad. Aux. "A" a Contr.','Tec. Aux. A a Contr.','NULL','NULL','NULL',26)
INSERT INTO [PCEPI2].[dbo].[CATEGORIA] ([ID_CATEGORIA] ,[DESCRIPCION_LARGA],[ABREVIACION1],[ABREVIACION2],[CVE_CATEGORIA],[CI_CATEGORIA],[CVE_CATEGORIA_2], [ORDENAR]) VALUES (28, 'T�cnico Acad�mico Auxiliar "B" de Tiempo Completo a Contrato','Tec. Acad. Aux. "B" a Contr.','Tec. Aux. B a Contr.','NULL','NULL','NULL',27)
INSERT INTO [PCEPI2].[dbo].[CATEGORIA] ([ID_CATEGORIA] ,[DESCRIPCION_LARGA],[ABREVIACION1],[ABREVIACION2],[CVE_CATEGORIA],[CI_CATEGORIA],[CVE_CATEGORIA_2], [ORDENAR]) VALUES (29, 'T�cnico Acad�mico Auxiliar "C" de Tiempo Completo a Contrato','Tec. Acad. Aux. "C" a Contr.','Tec. Aux. C a Contr.','NULL','NULL','NULL',28)
INSERT INTO [PCEPI2].[dbo].[CATEGORIA] ([ID_CATEGORIA] ,[DESCRIPCION_LARGA],[ABREVIACION1],[ABREVIACION2],[CVE_CATEGORIA],[CI_CATEGORIA],[CVE_CATEGORIA_2], [ORDENAR]) VALUES (44, 'T�cnico Acad�mico Auxiliar "A" de Tiempo Completo Interino','Tec. Acad. Aux. "A" Int.','Tec. Aux. A Int.','NULL','NULL','NULL',29)
INSERT INTO [PCEPI2].[dbo].[CATEGORIA] ([ID_CATEGORIA] ,[DESCRIPCION_LARGA],[ABREVIACION1],[ABREVIACION2],[CVE_CATEGORIA],[CI_CATEGORIA],[CVE_CATEGORIA_2], [ORDENAR]) VALUES (45, 'T�cnico Acad�mico Auxiliar "B" de Tiempo Completo Interino','Tec. Acad. Aux. "B" Int.','Tec. Aux. B Int.','NULL','NULL','NULL',30)
INSERT INTO [PCEPI2].[dbo].[CATEGORIA] ([ID_CATEGORIA] ,[DESCRIPCION_LARGA],[ABREVIACION1],[ABREVIACION2],[CVE_CATEGORIA],[CI_CATEGORIA],[CVE_CATEGORIA_2], [ORDENAR]) VALUES (46, 'T�cnico Acad�mico Auxiliar "C" de Tiempo Completo Interino','Tec. Acad. Aux. "C" Int.','Tec. Aux. C Int.','NULL','NULL','NULL',31)
INSERT INTO [PCEPI2].[dbo].[CATEGORIA] ([ID_CATEGORIA] ,[DESCRIPCION_LARGA],[ABREVIACION1],[ABREVIACION2],[CVE_CATEGORIA],[CI_CATEGORIA],[CVE_CATEGORIA_2], [ORDENAR]) VALUES (47, 'T�cnico Acad�mico Titular "A" de Tiempo Completo Interino','Tec. Acad. Tit. "A" Int.','Tec. Tit. A Int.','NULL','NULL','NULL',47)
INSERT INTO [PCEPI2].[dbo].[CATEGORIA] ([ID_CATEGORIA] ,[DESCRIPCION_LARGA],[ABREVIACION1],[ABREVIACION2],[CVE_CATEGORIA],[CI_CATEGORIA],[CVE_CATEGORIA_2], [ORDENAR]) VALUES (48, 'T�cnico Acad�mico Titular "B" de Tiempo Completo Interino','Tec. Acad. Tit. "B" Int.','Tec. Tit. B Int.','NULL','NULL','NULL',48)
INSERT INTO [PCEPI2].[dbo].[CATEGORIA] ([ID_CATEGORIA] ,[DESCRIPCION_LARGA],[ABREVIACION1],[ABREVIACION2],[CVE_CATEGORIA],[CI_CATEGORIA],[CVE_CATEGORIA_2], [ORDENAR]) VALUES (49, 'T�cnico Acad�mico Titular "C" de Tiempo Completo Interino','Tec. Acad. Tit. "C" Int.','Tec. Tit. C Int.','NULL','NULL','NULL',49)
INSERT INTO [PCEPI2].[dbo].[CATEGORIA] ([ID_CATEGORIA] ,[DESCRIPCION_LARGA],[ABREVIACION1],[ABREVIACION2],[CVE_CATEGORIA],[CI_CATEGORIA],[CVE_CATEGORIA_2], [ORDENAR]) VALUES (50, 'T�cnico Acad�mico Titular "A" de Tiempo Completo a Contrato','Tec. Acad. Tit. "A" a Contr.','Tec. Tit. A a Contr.','NULL','NULL','NULL',44)
INSERT INTO [PCEPI2].[dbo].[CATEGORIA] ([ID_CATEGORIA] ,[DESCRIPCION_LARGA],[ABREVIACION1],[ABREVIACION2],[CVE_CATEGORIA],[CI_CATEGORIA],[CVE_CATEGORIA_2], [ORDENAR]) VALUES (51, 'T�cnico Acad�mico Titular "B" de Tiempo Completo a Contrato','Tec. Acad. Tit. "B" a Contr.','Tec. Tit. B a Contr.','NULL','NULL','NULL',45)
INSERT INTO [PCEPI2].[dbo].[CATEGORIA] ([ID_CATEGORIA] ,[DESCRIPCION_LARGA],[ABREVIACION1],[ABREVIACION2],[CVE_CATEGORIA],[CI_CATEGORIA],[CVE_CATEGORIA_2], [ORDENAR]) VALUES (52, 'T�cnico Acad�mico Titular "C" de Tiempo Completo a Contrato','Tec. Acad. Tit. "C" a Contr.','Tec. Tit. C a Contr.','NULL','NULL','NULL',46)
INSERT INTO [PCEPI2].[dbo].[CATEGORIA] ([ID_CATEGORIA] ,[DESCRIPCION_LARGA],[ABREVIACION1],[ABREVIACION2],[CVE_CATEGORIA],[CI_CATEGORIA],[CVE_CATEGORIA_2], [ORDENAR]) VALUES (30, 'T�cnico Acad�mico Asociado "A" de Tiempo Completo a Contrato','Tec. Acad. Asoc. "A" a Contr.','Tec. Asoc. A a Contr.','NULL','NULL','NULL',35)
INSERT INTO [PCEPI2].[dbo].[CATEGORIA] ([ID_CATEGORIA] ,[DESCRIPCION_LARGA],[ABREVIACION1],[ABREVIACION2],[CVE_CATEGORIA],[CI_CATEGORIA],[CVE_CATEGORIA_2], [ORDENAR]) VALUES (31, 'T�cnico Acad�mico Asociado "B" de Tiempo Completo a Contrato','Tec. Acad. Asoc. "B" a Contr.','Tec. Asoc. B a Contr.','NULL','NULL','NULL',36)
INSERT INTO [PCEPI2].[dbo].[CATEGORIA] ([ID_CATEGORIA] ,[DESCRIPCION_LARGA],[ABREVIACION1],[ABREVIACION2],[CVE_CATEGORIA],[CI_CATEGORIA],[CVE_CATEGORIA_2], [ORDENAR]) VALUES (32, 'T�cnico Acad�mico Asociado "C" de Tiempo Completo a Contrato','Tec. Acad. Asoc. "C" a Contr.','Tec. Asoc. C a Contr.','NULL','NULL','NULL',37)
INSERT INTO [PCEPI2].[dbo].[CATEGORIA] ([ID_CATEGORIA] ,[DESCRIPCION_LARGA],[ABREVIACION1],[ABREVIACION2],[CVE_CATEGORIA],[CI_CATEGORIA],[CVE_CATEGORIA_2], [ORDENAR]) VALUES (41, 'T�cnico Acad�mico Asociado "A" de Tiempo Completo Interino','Tec. Acad. Asoc. "A" Int.','Tec. Asoc. A Int.','NULL','NULL','NULL',38)
INSERT INTO [PCEPI2].[dbo].[CATEGORIA] ([ID_CATEGORIA] ,[DESCRIPCION_LARGA],[ABREVIACION1],[ABREVIACION2],[CVE_CATEGORIA],[CI_CATEGORIA],[CVE_CATEGORIA_2], [ORDENAR]) VALUES (42, 'T�cnico Acad�mico Asociado "B" de Tiempo Completo Interino','Tec. Acad. Asoc. "B" Int.','Tec. Asoc. B Int.','NULL','NULL','NULL',39)
INSERT INTO [PCEPI2].[dbo].[CATEGORIA] ([ID_CATEGORIA] ,[DESCRIPCION_LARGA],[ABREVIACION1],[ABREVIACION2],[CVE_CATEGORIA],[CI_CATEGORIA],[CVE_CATEGORIA_2], [ORDENAR]) VALUES (43, 'T�cnico Acad�mico Asociado "C" de Tiempo Completo Interino','Tec. Acad. Asoc. "C" Int.','Tec. Asoc. C Int.','NULL','NULL','NULL',40)
INSERT INTO [PCEPI2].[dbo].[CATEGORIA] ([ID_CATEGORIA] ,[DESCRIPCION_LARGA],[ABREVIACION1],[ABREVIACION2],[CVE_CATEGORIA],[CI_CATEGORIA],[CVE_CATEGORIA_2], [ORDENAR]) VALUES (2, 'Profesor Asignatura "A" Interino','Asignatura "A" Int.','Asig A Int.','PAAI','D-4100I',' ',1)
INSERT INTO [PCEPI2].[dbo].[CATEGORIA] ([ID_CATEGORIA] ,[DESCRIPCION_LARGA],[ABREVIACION1],[ABREVIACION2],[CVE_CATEGORIA],[CI_CATEGORIA],[CVE_CATEGORIA_2], [ORDENAR]) VALUES (3, 'Profesor Asignatura "A" Definitivo','Asignatura "A" Def.','Asig A Def.','PAAD','D-4100D','P1A3',2)
INSERT INTO [PCEPI2].[dbo].[CATEGORIA] ([ID_CATEGORIA] ,[DESCRIPCION_LARGA],[ABREVIACION1],[ABREVIACION2],[CVE_CATEGORIA],[CI_CATEGORIA],[CVE_CATEGORIA_2], [ORDENAR]) VALUES (4, 'Profesor Asignatura "B" Definitivo','Asignatura "B" Def.','Asig B Def.','PABD','D-4200D','P1B3',3)
INSERT INTO [PCEPI2].[dbo].[CATEGORIA] ([ID_CATEGORIA] ,[DESCRIPCION_LARGA],[ABREVIACION1],[ABREVIACION2],[CVE_CATEGORIA],[CI_CATEGORIA],[CVE_CATEGORIA_2], [ORDENAR]) VALUES (13, 'Profesor PCA "A"','PCA "A" T.C','PCA A T.C','PCAD','D-4802D','P4A3',6)
INSERT INTO [PCEPI2].[dbo].[CATEGORIA] ([ID_CATEGORIA] ,[DESCRIPCION_LARGA],[ABREVIACION1],[ABREVIACION2],[CVE_CATEGORIA],[CI_CATEGORIA],[CVE_CATEGORIA_2], [ORDENAR]) VALUES (14, 'Profesor PCA "B"','PCA "B" T.C','PCA B T.C','PCBD','D-4803D','P4B3',7)
INSERT INTO [PCEPI2].[dbo].[CATEGORIA] ([ID_CATEGORIA] ,[DESCRIPCION_LARGA],[ABREVIACION1],[ABREVIACION2],[CVE_CATEGORIA],[CI_CATEGORIA],[CVE_CATEGORIA_2], [ORDENAR]) VALUES (11, 'Profesor PCEMS "A"','PCEMS "A" T.C.','PCEMS A T.C.','PPAD','D-4310D','P2A3',4)
INSERT INTO [PCEPI2].[dbo].[CATEGORIA] ([ID_CATEGORIA] ,[DESCRIPCION_LARGA],[ABREVIACION1],[ABREVIACION2],[CVE_CATEGORIA],[CI_CATEGORIA],[CVE_CATEGORIA_2], [ORDENAR]) VALUES (12, 'Profesor PCEMS "B"','PCEMS "B" T.C.','PCEMS B T.C.','PPBD','D-4420D','P2B3',5)
INSERT INTO [PCEPI2].[dbo].[CATEGORIA] ([ID_CATEGORIA] ,[DESCRIPCION_LARGA],[ABREVIACION1],[ABREVIACION2],[CVE_CATEGORIA],[CI_CATEGORIA],[CVE_CATEGORIA_2], [ORDENAR]) VALUES (35, 'Profesor de Carrera Asociado "A" de Tiempo Completo a Contrato','Asociado "A" a Contr.','Asoc A a Contr.','PSAC','D-5480D','P5A1',8)
INSERT INTO [PCEPI2].[dbo].[CATEGORIA] ([ID_CATEGORIA] ,[DESCRIPCION_LARGA],[ABREVIACION1],[ABREVIACION2],[CVE_CATEGORIA],[CI_CATEGORIA],[CVE_CATEGORIA_2], [ORDENAR]) VALUES (36, 'Profesor de Carrera Asociado "B" de Tiempo Completo a Contrato','Asociado "B" a Contr.','Asoc B a Contr.','PSBC','D-5584D','P5B1',9)
INSERT INTO [PCEPI2].[dbo].[CATEGORIA] ([ID_CATEGORIA] ,[DESCRIPCION_LARGA],[ABREVIACION1],[ABREVIACION2],[CVE_CATEGORIA],[CI_CATEGORIA],[CVE_CATEGORIA_2], [ORDENAR]) VALUES (37, 'Profesor de Carrera Asociado "C" de Tiempo Completo a Contrato','Asociado "C" a Contr.','Asoc C a Contr.','PSCC','D-5686D','P5C1',10)
INSERT INTO [PCEPI2].[dbo].[CATEGORIA] ([ID_CATEGORIA] ,[DESCRIPCION_LARGA],[ABREVIACION1],[ABREVIACION2],[CVE_CATEGORIA],[CI_CATEGORIA],[CVE_CATEGORIA_2], [ORDENAR]) VALUES (15, 'Profesor de Carrera Asociado "A" de Tiempo Completo Interino','Asociado "A" Int.','Asoc A Int.','PSAI','D-5480I','P5A2',11)
INSERT INTO [PCEPI2].[dbo].[CATEGORIA] ([ID_CATEGORIA] ,[DESCRIPCION_LARGA],[ABREVIACION1],[ABREVIACION2],[CVE_CATEGORIA],[CI_CATEGORIA],[CVE_CATEGORIA_2], [ORDENAR]) VALUES (16, 'Profesor de Carrera Asociado "B" de Tiempo Completo Interino','Asociado "B" Int.','Asoc B Int.','PSBI','D-5584I','P5B2',12)
INSERT INTO [PCEPI2].[dbo].[CATEGORIA] ([ID_CATEGORIA] ,[DESCRIPCION_LARGA],[ABREVIACION1],[ABREVIACION2],[CVE_CATEGORIA],[CI_CATEGORIA],[CVE_CATEGORIA_2], [ORDENAR]) VALUES (17, 'Profesor de Carrera Asociado "C" de Tiempo Completo Interino','Asociado "C" Int.','Asoc "C" Int.','PSCI','D-5686I','P5C2',13)
INSERT INTO [PCEPI2].[dbo].[CATEGORIA] ([ID_CATEGORIA] ,[DESCRIPCION_LARGA],[ABREVIACION1],[ABREVIACION2],[CVE_CATEGORIA],[CI_CATEGORIA],[CVE_CATEGORIA_2], [ORDENAR]) VALUES (5, 'Profesor de Carrera Asociado "A" de Tiempo Completo Definitivo','Asociado "A" T. C. Def.','Asoc A Def.','PSAD','D-5480D','P5A3',14)
INSERT INTO [PCEPI2].[dbo].[CATEGORIA] ([ID_CATEGORIA] ,[DESCRIPCION_LARGA],[ABREVIACION1],[ABREVIACION2],[CVE_CATEGORIA],[CI_CATEGORIA],[CVE_CATEGORIA_2], [ORDENAR]) VALUES (6, 'Profesor de Carrera Asociado "B" de Tiempo Completo Definitivo','Asociado "B" T. C. Def.','Asoc B Def.','PSBD','D-5584D','P5B3',15)
INSERT INTO [PCEPI2].[dbo].[CATEGORIA] ([ID_CATEGORIA] ,[DESCRIPCION_LARGA],[ABREVIACION1],[ABREVIACION2],[CVE_CATEGORIA],[CI_CATEGORIA],[CVE_CATEGORIA_2], [ORDENAR]) VALUES (7, 'Profesor de Carrera Asociado "C" de Tiempo Completo Definitivo','Asociado "C" T. C. Def.','Asoc C Def.','PSCD','D-5686D','P5C3',16)
INSERT INTO [PCEPI2].[dbo].[CATEGORIA] ([ID_CATEGORIA] ,[DESCRIPCION_LARGA],[ABREVIACION1],[ABREVIACION2],[CVE_CATEGORIA],[CI_CATEGORIA],[CVE_CATEGORIA_2], [ORDENAR]) VALUES (38, 'Profesor de Carrera Titular "A" de Tiempo Completo a Contrato','Titular "A" T.C. a Contr.','Tit A a Contr.','PTAC','D-6489C','P6A1',17)
INSERT INTO [PCEPI2].[dbo].[CATEGORIA] ([ID_CATEGORIA] ,[DESCRIPCION_LARGA],[ABREVIACION1],[ABREVIACION2],[CVE_CATEGORIA],[CI_CATEGORIA],[CVE_CATEGORIA_2], [ORDENAR]) VALUES (39, 'Profesor de Carrera Titular "B" de Tiempo Completo a Contrato','Titular "B" T.C. a Contr.','Tit B a Contr.','PTBC','D-6593C','P6B1',18)
INSERT INTO [PCEPI2].[dbo].[CATEGORIA] ([ID_CATEGORIA] ,[DESCRIPCION_LARGA],[ABREVIACION1],[ABREVIACION2],[CVE_CATEGORIA],[CI_CATEGORIA],[CVE_CATEGORIA_2], [ORDENAR]) VALUES (40, 'Profesor de Carrera Titular "C" de Tiempo Completo a Contrato','Titular "C" T.C. a Contr.','Tit C a Contr.','PTCC','D-6696D','P6C1',19)
INSERT INTO [PCEPI2].[dbo].[CATEGORIA] ([ID_CATEGORIA] ,[DESCRIPCION_LARGA],[ABREVIACION1],[ABREVIACION2],[CVE_CATEGORIA],[CI_CATEGORIA],[CVE_CATEGORIA_2], [ORDENAR]) VALUES (8, 'Profesor de Carrera Titular "A" de Tiempo Completo Definitivo','Titular "A" T.C. Definitivo','Tit A Def','PTAD','D-6489D','P6A3',23)
INSERT INTO [PCEPI2].[dbo].[CATEGORIA] ([ID_CATEGORIA] ,[DESCRIPCION_LARGA],[ABREVIACION1],[ABREVIACION2],[CVE_CATEGORIA],[CI_CATEGORIA],[CVE_CATEGORIA_2], [ORDENAR]) VALUES (9, 'Profesor de Carrera Titular "B" de Tiempo Completo Definitivo','Titular "B" T.C. Definitivo','Tit B Def','PTBD','D-6593D','P6B3',24)
INSERT INTO [PCEPI2].[dbo].[CATEGORIA] ([ID_CATEGORIA] ,[DESCRIPCION_LARGA],[ABREVIACION1],[ABREVIACION2],[CVE_CATEGORIA],[CI_CATEGORIA],[CVE_CATEGORIA_2], [ORDENAR]) VALUES (10, 'Profesor de Carrera Titular "C" de Tiempo Completo Definitivo','Titular "C" T.C. Definitivo','Tit C Def','PTCD','D-6696D','P6C3',25)
INSERT INTO [PCEPI2].[dbo].[CATEGORIA] ([ID_CATEGORIA] ,[DESCRIPCION_LARGA],[ABREVIACION1],[ABREVIACION2],[CVE_CATEGORIA],[CI_CATEGORIA],[CVE_CATEGORIA_2], [ORDENAR]) VALUES (18, 'T�cnico Acad�mico Auxiliar "A" Definitivo','Tec. Acad. Aux. "A" Def.','Tec. Aux. A Def.','TIAD','D-7439D','T3A3',32)
INSERT INTO [PCEPI2].[dbo].[CATEGORIA] ([ID_CATEGORIA] ,[DESCRIPCION_LARGA],[ABREVIACION1],[ABREVIACION2],[CVE_CATEGORIA],[CI_CATEGORIA],[CVE_CATEGORIA_2], [ORDENAR]) VALUES (53, 'Profesor de Carrera Titular "A" de Tiempo Completo Interino','Titular "A" T.C. Int.','Tit A Int.','NULL','NULL','NULL',20)
INSERT INTO [PCEPI2].[dbo].[CATEGORIA] ([ID_CATEGORIA] ,[DESCRIPCION_LARGA],[ABREVIACION1],[ABREVIACION2],[CVE_CATEGORIA],[CI_CATEGORIA],[CVE_CATEGORIA_2], [ORDENAR]) VALUES (54, 'Profesor de Carrera Titular "B" de Tiempo Completo Interino','Titular "B" T.C. Int.','Tit B Int.','NULL','NULL','NULL',21)
INSERT INTO [PCEPI2].[dbo].[CATEGORIA] ([ID_CATEGORIA] ,[DESCRIPCION_LARGA],[ABREVIACION1],[ABREVIACION2],[CVE_CATEGORIA],[CI_CATEGORIA],[CVE_CATEGORIA_2], [ORDENAR]) VALUES (55, 'Profesor de Carrera Titular "C" de Tiempo Completo Interino','Titular "C" T.C. Int.','Tit C Int.','NULL','NULL','NULL',22)
INSERT INTO [PCEPI2].[dbo].[CATEGORIA] ([ID_CATEGORIA] ,[DESCRIPCION_LARGA],[ABREVIACION1],[ABREVIACION2],[CVE_CATEGORIA],[CI_CATEGORIA],[CVE_CATEGORIA_2], [ORDENAR]) VALUES (56, 'Profesor Em�rito','Profesor Em�rito','Em�rito','NULL','NULL','NULL',53)


/*CREATE TABLE [dbo].[DIRECTOR](
	[RFC] [char](13) NOT NULL,
	[FECHA_INICIO] [smalldatetime] NOT NULL,
	[FECHA_TERMINO] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_DIRECTOR] PRIMARY KEY CLUSTERED 
(
	[RFC] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

INSERT INTO [PCEPI2].[dbo].[CATEGORIA] ([ID_CATEGORIA] ,[DESCRIPCION_LARGA],[ABREVIACION1],[ABREVIACION2],[CVE_CATEGORIA],[CI_CATEGORIA],[CVE_CATEGORIA_2], [ORDENAR]) VALUES (56, 'Profesor Em�rito','Profesor Em�rito','Em�rito','NULL','NULL','NULL',53)
*/


CREATE TABLE [dbo].[EVALUACION](
	[ID_EVALUACION] [smallint] NOT NULL,
	[DESCRIPCION] [varchar](15) NOT NULL,
 CONSTRAINT [PK_EVALUACION] PRIMARY KEY CLUSTERED 
(
	[ID_EVALUACION] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

INSERT INTO [PCEPI2].[dbo].[EVALUACION] ([ID_EVALUACION] ,[DESCRIPCION]) VALUES (1 ,'Aceptado')
INSERT INTO [PCEPI2].[dbo].[EVALUACION] ([ID_EVALUACION] ,[DESCRIPCION]) VALUES (2 ,'No Aceptado')
INSERT INTO [PCEPI2].[dbo].[EVALUACION] ([ID_EVALUACION] ,[DESCRIPCION]) VALUES (3 ,'Incumplimiento')


CREATE TABLE [dbo].[MATERIA](
	[ID_MATERIA] [char](4) NOT NULL,
	[MATERIA03] [char](3) NOT NULL,
	[MATERIA05] [char](5) NOT NULL,
	[MATERIA11] [char](11) NOT NULL,
	[MATERIA40] [char](40) NOT NULL,
	[MATERIA75] [char](75) NULL,
	[SEMESTRE] [char](1) NOT NULL,
	[HORAS] [char](1) NOT NULL,
	[AREA] [smallint] NOT NULL,
 CONSTRAINT [PK_MATERIA] PRIMARY KEY CLUSTERED 
(
	[ID_MATERIA] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('1101', 'MAT','MAT-1','MATEMAT I  ','Matem�ticas I �lgebra y Geometr�a       ','Matem�ticas I �lgebra y Geometr�a                                          ',1,5,1)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('1102', 'COM','T.COM','T. COMPUTO ','Taller de C�mputo                       ','Taller de C�mputo                                                          ',1,4,1)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('2016', 'COD','CODAW','SIS COM DW ','Sistemas Computacionales. Aplic Web BD  ','Sistemas Computacionales. Aplicaciones Web y Bases de datos                ',1,4,8)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('1103', 'QUI','QUI-1','QUIMICA I  ','Qu�mica I                               ','Qu�mica I                                                                  ',1,5,2)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('1104', 'HIS','HIS-1','HIST UMYC I','Historia Universal Moderna y Cont. I    ','Historia Universal Moderna y Contempor�nea I                               ',1,4,3)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('1105', 'LYR','LYR-1','LEC Y RED I','Taller de Lectura Red e Inv Doc I       ','Taller de Lectura, Redacci�n e Iniciaci�n a la Investigaci�n Documental I  ',1,6,4)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('1106', 'FRA','FRA-1','FRANCES I  ','Franc�s I                               ','Franc�s I                                                                  ',1,4,6)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('1107', 'ING','ING-1','INGLES I   ','Ingl�s I                                ','Ingl�s I                                                                   ',1,4,5)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('1108', 'E.F','E FIS','EDUC FISICA','Educaci�n F�sica                        ','Educaci�n F�sica                                                           ',1,4,7)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('2017', 'AE ','AE   ','APLIC EXCEL','Aplicaciones de Excel                   ','Aplicaciones de Excel                                                      ',1,4,8)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('1201', 'MAT','MAT-2','MATEMAT II ','Matem�ticas II �lgebra y Geometr�a      ','Matem�ticas II �lgebra y Geometr�a                                         ',2,5,1)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('1203', 'QUI','QUI-2','QUIMICA II ','Qu�mica II                              ','Qu�mica II                                                                 ',2,5,2)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('1204', 'HIS','HIS-2','HIST UMC II','Historia Universal Moderna y Cont. II   ','Historia Universal Moderna y Contempor�nea II                              ',2,4,3)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('1205', 'LYR','LYR-2','LEC RED II ','Taller de Lectura Red e Inv Doc II      ','Taller de Lectura, Redacci�n e Iniciaci�n a la Investigaci�n Documental II ',2,6,4)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('1206', 'FRA','FRA-2','FRANCES II ','Franc�s II                              ','Franc�s II                                                                 ',2,4,6)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('1207', 'ING','ING-2','INGLES II  ','Ingl�s II                               ','Ingl�s II                                                                  ',2,4,5)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('1301', 'MAT','MAT-3','MATEMA III ','Matem�ticas III �lgebra y Geom. Anal�t. ','Matem�ticas III �lgebra y Geometr�a Anal�tica                              ',3,5,1)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('1302', 'FIS','FIS-1','FISICA I   ','F�sica I                                ','F�sica I                                                                   ',3,5,2)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('1303', 'BIO','BIO-1','BIOLOGIA I ','Biolog�a I                              ','Biolog�a I                                                                 ',3,5,2)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('1304', 'HIS','HIS-3','HIST MEX I ','Historia de M�xico I                    ','Historia de M�xico I                                                       ',3,4,3)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('1305', 'LYR','LYR-3','LEC RED III','Taller de Lectura Red e Inv Doc III     ','Taller de Lectura, Redacci�n e Iniciaci�n a la Investigaci�n Documental III',3,6,4)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('1306', 'FRA','FRA-3','FRANCES III','Franc�s III                             ','Franc�s III                                                                ',3,4,6)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('1307', 'ING','ING-3','INGLES III ','Ingl�s III                              ','Ingl�s III                                                                 ',3,4,5)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('1401', 'MAT','MAT-4','MATEMAT IV ','Matem�ticas IV �lgebra y Geom. Anal�t.  ','Matem�ticas IV �lgebra y Geometr�a Anal�tica                               ',4,5,1)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('1402', 'FIS','FIS-2','FISICA II  ','F�sica II                               ','F�sica II                                                                  ',4,5,2)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('1403', 'BIO','BIO-2','BIOLOGIA II','Biolog�a II                             ','Biolog�a II                                                                ',4,5,2)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('1404', 'HIS','HIS-4','HIST MEX IV','Historia de M�xico II                   ','Historia de M�xico II                                                      ',4,4,3)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('1405', 'LYR','LYR-4','LEC RED IV ','Taller de Lectura Red e Inv Doc IV      ','Taller de Lectura, Redacci�n e Iniciaci�n a la Investigaci�n Documental IV ',4,6,4)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('1406', 'FRA','FRA-4','FRANCES IV ','Franc�s IV                              ','Franc�s IV                                                                 ',4,4,6)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('1407', 'ING','ING-4','INGLES IV  ','Ingl�s IV                               ','Ingl�s IV                                                                  ',4,4,5)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('1501', 'CAL','CAL-1','CALCULO I  ','C�lculo Diferencial e Integral I        ','C�lculo Diferencial e Integral I                                           ',5,4,1)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('1502', 'FIL','FIL-1','FILOSOF I  ','Filosof�a I                             ','Filosof�a I                                                                ',5,4,3)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('1503', 'EST','EST-1','ESTADIST I ','Estad�stica y Probabilidad I            ','Estad�stica y Probabilidad I                                               ',5,4,1)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('1504', 'CIB','CIB-1','CIBERNET I ','Cibern�tica y Computaci�n I             ','Cibern�tica y Computaci�n I                                                ',5,4,1)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('1505', 'BIO','BIO-3','BIOLOG III ','Biolog�a III                            ','Biolog�a III                                                               ',5,4,2)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('1506', 'FIS','FIS-3','FISICA III ','F�sica III                              ','F�sica III                                                                 ',5,4,2)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('1507', 'QUI','QUI-3','QUIMICA III','Qu�mica III                             ','Qu�mica III                                                                ',5,4,2)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('1508', 'TEM','TEM-1','TEM. FIL I ','Temas Selectos de Filosof�a I           ','Temas Selectos de Filosof�a I                                              ',5,4,3)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('1509', 'ADM','ADM-1','ADMINIST I ','Administraci�n I                        ','Administraci�n I                                                           ',5,4,3)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('1510', 'ANT','ANT-1','ANTROPOL I ','Antropolog�a I                          ','Antropolog�a I                                                             ',5,4,3)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('1511', 'CSS','CSS-1','C. SALUD I ','Ciencias de la Salud I                  ','Ciencias de la Salud I                                                     ',5,4,2)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('1512', 'CSP','CSP-1','C. POLITI I','Ciencias Pol�ticas y Sociales I         ','Ciencias Pol�ticas y Sociales I                                            ',5,4,3)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('1513', 'DER','DER-1','DERECHO I  ','Derecho I                               ','Derecho I                                                                  ',5,4,3)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('1514', 'ECO','ECO-1','ECONOMIA I ','Econom�a I                              ','Econom�a I                                                                 ',5,4,3)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('1515', 'GEO','GEO-1','GEOGRAFIA I','Geograf�a I                             ','Geograf�a I                                                                ',5,4,3)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('1516', 'PSI','PSI-1','PSICOLOG I ','Psicolog�a I                            ','Psicolog�a I                                                               ',5,4,2)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('1517', 'TEO','TEO-1','TEO HIST I ','Teor�a de la Historia I                 ','Teor�a de la Historia I                                                    ',5,4,3)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('1518', 'GRI','GRI-1','GRIEGO I   ','Griego I                                ','Griego I                                                                   ',5,4,4)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('1519', 'LAT','LAT-1','LATIN I    ','Lat�n I                                 ','Lat�n I                                                                    ',5,4,4)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('1520', 'TEX','TEX-1','TEXT LIT I ','An�lisis de Textos Literarios I         ','An�lisis de Textos Literarios I                                            ',5,4,4)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('1521', 'CMN','COM-1','T COMUNIC I','Taller de Comunicaci�n I                ','Taller de Comunicaci�n I                                                   ',5,4,4)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('1522', 'DIS','DIS-1','DISE�O AM I','Taller de Dise�o Ambiental I            ','Taller de Dise�o Ambiental I                                               ',5,4,4)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('1523', 'EXP','EXP-1','T EXP GRA I','Taller de Expresi�n Gr�fica I           ','Taller de Expresi�n Gr�fica I                                              ',5,4,4)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('1601', 'CAL','CAL-2','CALCULO II ','C�lculo Diferencial e Integral II       ','C�lculo Diferencial e Integral II                                          ',6,4,1)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('1602', 'FIL','FIL-2','FILOSOF II ','Filosof�a II                            ','Filosof�a II                                                               ',6,4,3)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('1603', 'EST','EST-2','ESTYPROB II','Estad�stica y Probabilidad II           ','Estad�stica y Probabilidad II                                              ',6,4,1)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('1604', 'CIB','CIB-2','C Y COM II ','Cibern�tica y Computaci�n II            ','Cibern�tica y Computaci�n II                                               ',6,4,1)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('1605', 'BIO','BIO-4','BIOLOG IV  ','Biolog�a IV                             ','Biolog�a IV                                                                ',6,4,2)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('1606', 'FIS','FIS-4','FISICA IV  ','F�sica IV                               ','F�sica IV                                                                  ',6,4,2)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('1607', 'QUI','QUI-4','QUIMICA IV ','Qu�mica IV                              ','Qu�mica IV                                                                 ',6,4,2)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('1608', 'TEM','TEM-2','T S FILO II','Temas Selectos de Filosof�a II          ','Temas Selectos de Filosof�a II                                             ',6,4,3)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('1609', 'ADM','ADM-2','ADMINIS II ','Administraci�n II                       ','Administraci�n II                                                          ',6,4,3)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('1610', 'ANT','ANT-2','ANTROPO II ','Antropolog�a II                         ','Antropolog�a II                                                            ',6,4,3)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('1611', 'CSS','CSS-2','C SALUD II ','Ciencias de la Salud II                 ','Ciencias de la Salud II                                                    ',6,4,2)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('1612', 'CSP','CSP-2','C POLITI II','Ciencias Pol�ticas y Sociales II        ','Ciencias Pol�ticas y Sociales II                                           ',6,4,3)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('1613', 'DER','DER-2','DERECHO II ','Derecho II                              ','Derecho II                                                                 ',6,4,3)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('1614', 'ECO','ECO-2','ECONOMIA II','Econom�a II                             ','Econom�a II                                                                ',6,4,3)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('1615', 'GEO','GEO-2','GEOGRA II  ','Geograf�a II                            ','Geograf�a II                                                               ',6,4,3)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('1616', 'PSI','PSI-2','PSICOLO II ','Psicolog�a II                           ','Psicolog�a II                                                              ',6,4,2)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('1617', 'TEO','TEO-2','TEO HIS II ','Teor�a de la Historia II                ','Teor�a de la Historia II                                                   ',6,4,3)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('1618', 'GRI','GRI-2','GRIEGO II  ','Griego II                               ','Griego II                                                                  ',6,4,4)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('1619', 'LAT','LAT-2','LATIN II   ','Lat�n II                                ','Lat�n II                                                                   ',6,4,4)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('1620', 'TEX','TEX-2','TEXT LIT II','An�lisis de Textos Literarios II        ','An�lisis de Textos Literarios II                                           ',6,4,4)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('1621', 'CMN','COM-2','T COMUNICII','Taller de Comunicaci�n II               ','Taller de Comunicaci�n II                                                  ',6,4,4)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('1622', 'DIS','DIS-2','DISE�O AMII','Taller de Dise�o Ambiental II           ','Taller de Dise�o Ambiental II                                              ',6,4,4)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('1623', 'EXP','EXP-2','T EXPGRA II','Taller de Expresi�n Gr�fica II          ','Taller de Expresi�n Gr�fica II                                             ',6,4,4)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('3001', 'MAT','MAT-1','MATEMAT I  ','MATEMATICAS I                           ','MATEMATICAS I                                                              ',1,4,1)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('3002', 'FIS','FIS-1','FISICA I   ','FISICA I                                ','FISICA I                                                                   ',1,5,2)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('3003', 'HIS','HIS-1','HIST UNIV  ','HISTORIA UNIVERSAL MODERNA Y CONT.      ','HISTORIA UNIVERSAL MODERNA Y CONT.                                         ',1,3,3)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('3004', 'RED','RED-1','T REDAC I  ','TALLER DE REDACCION I                   ','TALLER DE REDACCION I                                                      ',1,3,4)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('3005', 'LEC','LEC-1','T LECT I   ','TALLER DE LECTURA DE CLASICOS UNIV.     ','TALLER DE LECTURA DE CLASICOS UNIV.                                        ',1,2,4)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('3006', 'FRA','FRAN ','FRANCES    ','FRANCES                                 ','FRANCES                                                                    ',0,0,0)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('3007', 'ING','ING  ','INGLES     ','INGLES                                  ','INGLES                                                                     ',3,3,4)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('3008', 'MAT','MAT-2','MATEMAT II ','MATEMATICAS II                          ','MATEMATICAS II                                                             ',2,4,1)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('3009', 'QUI','QUI-1','QUIMICA I  ','QUIMICA I                               ','QUIMICA I                                                                  ',2,5,2)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('3010', 'HIS','HIS-2','HIST MEX I ','HISTORIA DE MEXICO I                    ','HISTORIA DE MEXICO I                                                       ',2,3,3)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('3011', 'RED','RED-2','T REDAC II ','TALLER DE REDACCION II                  ','TALLER DE REDACCION II                                                     ',2,3,4)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('3012', 'LEC','LEC-2','T LECT II  ','TALLER DE LEC. DE CLASICOS ESP E HISP   ','TALLER DE LEC. DE CLASICOS ESP E HISP                                      ',2,2,4)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('3015', 'MAT','MAT-3','MATEMAT III','MATEMATICAS III                         ','MATEMATICAS III                                                            ',3,4,1)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('3016', 'BIO','BIO-1','BIOLOGIA I ','BIOLOGIA I                              ','BIOLOGIA I                                                                 ',3,5,2)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('3017', 'HIS','HIS-3','HIST MEX II','HISTORIA DE MEXICO II                   ','HISTORIA DE MEXICO II                                                      ',3,3,3)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('3018', 'RED','RED-3','T RED ID  I','TALL DE RED E INVEST DOC I              ','TALL DE RED E INVEST DOC I                                                 ',3,3,4)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('3019', 'LEC','LEC-3','T LECT AMU ','TALL DE LECT AUTORES MOD UNIV           ','TALL DE LECT AUTORES MOD UNIV                                              ',3,2,4)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('3022', 'MAT','MAT-4','MATEMAT IV ','MATEMATICAS IV                          ','MATEMATICAS IV                                                             ',4,4,1)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('3023', 'MET','MET  ','MET EXP FQB','MET CIENT EXP FIS QUIM BIOL             ','MET CIENT EXP FIS QUIM BIOL                                                ',4,5,2)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('3024', 'HIS','HIS-4','T DE LA HIS','TEORIA DE LA HISTORIA                   ','TEORIA DE LA HISTORIA                                                      ',4,3,3)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('3025', 'RED','RED-4','T RED ID II','TALL DE RED E INVEST DOC II             ','TALL DE RED E INVEST DOC II                                                ',4,3,4)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('3026', 'LEC','LEC-4','T LEC AMEH ','T LECT AUT MOD ESP E HISPNOAM           ','T LECT AUT MOD ESP E HISPNOAM                                              ',4,2,4)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('3029', 'MAT','MAT-5','MATEMAT V  ','MATEMATICAS V                           ','MATEMATICAS V                                                              ',5,4,1)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('3030', 'LOG','LOG-1','LOGICA I   ','LOGICA I                                ','LOGICA I                                                                   ',5,4,1)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('3031', 'EST','EST-1','ESTADIST I ','ESTADISTICA I                           ','ESTADISTICA I                                                              ',5,4,1)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('3032', 'FIS','FIS-2','FISICA II  ','FISICA II                               ','FISICA II                                                                  ',5,5,2)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('3033', 'QUI','QUI-2','QUIMICA II ','QUIMICA II                              ','QUIMICA II                                                                 ',5,5,2)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('3034', 'BIO','BIO-2','BIOLOGIA II','BIOLOGIA II                             ','BIOLOGIA II                                                                ',5,5,2)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('3035', 'ETE','ETE-1','ESTETICA I ','ESTETICA I                              ','ESTETICA I                                                                 ',5,3,3)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('3036', 'ETI','ETI-1','ETICA I    ','ETICA Y CONOCIMIENTO DEL HOMBRE I       ','ETICA Y CONOCIMIENTO DEL HOMBRE I                                          ',5,3,3)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('3037', 'FIL','FIL-1','FILOSOFIA I','FILOSOFIA I                             ','FILOSOFIA I                                                                ',5,3,3)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('3038', 'ECO','ECO-1','ECONOMIA I ','ECONOMIA I                              ','ECONOMIA I                                                                 ',5,3,3)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('3039', 'CSP','CSP-1','CS POL S I ','CS POLITICAS Y SOCIALES I               ','CS POLITICAS Y SOCIALES I                                                  ',5,3,3)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('3040', 'PSI','PSI-1','PSICOLOG I ','PSICOLOGIA I                            ','PSICOLOGIA I                                                               ',5,3,2)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('3041', 'DER','DER-1','DERECHO I  ','DERECHO I                               ','DERECHO I                                                                  ',5,3,3)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('3042', 'ADM','ADM-1','ADMINIST I ','ADMINISTRACION I                        ','ADMINISTRACION I                                                           ',5,3,3)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('3043', 'GEO','GEO-1','GEOGRAFIA I','GEOGRAFIA I                             ','GEOGRAFIA I                                                                ',5,3,3)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('3044', 'GRI','GRI-1','GRIEGO I   ','GRIEGO I                                ','GRIEGO I                                                                   ',5,3,4)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('3045', 'LAT','LAT-1','LATIN I    ','LATIN I                                 ','LATIN I                                                                    ',5,3,4)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('3046', 'CSS','CSS-1','CS SALUD I ','CS DE LA SALUD I                        ','CS DE LA SALUD I                                                           ',5,2,2)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('3047', 'CIB','CIB-1','CIB Y C  I ','CIB Y COMPUTACION I                     ','CIB Y COMPUTACION I                                                        ',5,2,1)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('3048', 'CSC','CSC-1','CS COM I   ','CS DE LA COMUNICACION I                 ','CS DE LA COMUNICACION I                                                    ',5,2,4)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('3049', 'DIS','DIS-1','DIS AMB I  ','DISE�O AMBIENTAL I                      ','DISE�O AMBIENTAL I                                                         ',5,2,4)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('3050', 'TEG','TEG-1','T EXP G  I ','TALLER DE EXPRESION GRAFICA I           ','TALLER DE EXPRESION GRAFICA I                                              ',5,2,4)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('3051', 'MAT','MAT-6','MATEMAT VI ','MATEMATICAS VI                          ','MATEMATICAS VI                                                             ',6,4,1)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('3052', 'LOG','LOG-2','LOGICA II  ','LOGICA II                               ','LOGICA II                                                                  ',6,4,1)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('3053', 'EST','EST-2','ESTADIST II','ESTADISTICA II                          ','ESTADISTICA II                                                             ',6,4,1)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('3054', 'FIS','FIS-3','FISICA III ','FISICA III                              ','FISICA III                                                                 ',6,5,2)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('3055', 'QUI','QUI-3','QUIMICA III','QUIMICA III                             ','QUIMICA III                                                                ',6,5,2)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('3056', 'BIO','BIO-3','BIOLOG III ','BIOLOGIA III                            ','BIOLOGIA III                                                               ',6,5,2)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('3057', 'ETE','ETE-2','ESTETICA II','ESTETICA II                             ','ESTETICA II                                                                ',6,3,3)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('3058', 'ETI','ETI-2','ETICA II   ','ETICA Y CONOCIMIENTO DEL HOMBRE II      ','ETICA Y CONOCIMIENTO DEL HOMBRE II                                         ',6,3,3)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('3059', 'FIL','FIL-2','FILOSOF II ','FILOSOFIA II                            ','FILOSOFIA II                                                               ',6,3,3)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('3060', 'ECO','ECO-2','ECONOMIA II','ECONOMIA II                             ','ECONOMIA II                                                                ',6,3,3)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('3061', 'CSP','CSP-2','C POL S II ','CS POLITICAS II                         ','CS POLITICAS II                                                            ',6,3,3)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('3062', 'PSI','PSI-2','PSICOLOG II','PSICOLOGIA II                           ','PSICOLOGIA II                                                              ',6,3,2)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('3063', 'DER','DER-2','DERECHO II ','DERECHO II                              ','DERECHO II                                                                 ',6,3,3)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('3064', 'ADM','ADM-2','ADMINIS II ','ADMINISTRACION II                       ','ADMINISTRACION II                                                          ',6,3,3)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('3065', 'GEO','GEO-2','GEOGRAF II ','GEOGRAFIA II                            ','GEOGRAFIA II                                                               ',6,3,3)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('3066', 'GRI','GRI-2','GRIEGO II  ','GRIEGO II                               ','GRIEGO II                                                                  ',6,3,4)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('3067', 'LAT','LAT-2','LATIN II   ','LATIN II                                ','LATIN II                                                                   ',6,3,4)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('3068', 'CSS','CSS-2','C SALUD II ','CS DE LA SALUD II                       ','CS DE LA SALUD II                                                          ',6,2,2)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('3069', 'CIB','CIB-2','CIB Y C II ','CIB Y COMPUTACION II                    ','CIB Y COMPUTACION II                                                       ',6,2,1)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('3070', 'CSC','CSC-2','CS COM  II ','CS DE LA COMUNICACION II                ','CS DE LA COMUNICACION II                                                   ',6,2,4)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('3071', 'DIS','DIS-2','DIS AMB II ','DISE�O AMBIENTAL II                     ','DISE�O AMBIENTAL II                                                        ',6,2,4)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('3072', 'TEG','TEG-2','T EXP G II ','TALLER DE EXPRESION GRAFICA II          ','TALLER DE EXPRESION GRAFICA II                                             ',6,2,4)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('2018', 'AQA','AQA  ','A QUI ALIM ','An�lisis Qu�mico de Alimentos           ','An�lisis Qu�mico de Alimentos                                              ',1,4,8)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('2020', 'HCD','HCD  ','H CULT DER ','Hacia una cultura del Derecho           ','Hacia una cultura del Derecho                                              ',1,4,8)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('2021', 'CPW','CPW  ','CRE PAG WEB','Creacion de una P�gina Web HTML B�sico  ','Creacion de una P�gina Web en lenguaje HTML B�sico                         ',1,4,8)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('2022', 'DIP','DIP  ','DIAG PRV PC','Diag Preventivo y Primeros Aux a PCs   ','Diagn�stico Preventivo y Primeros Auxilios a Computadoras Personales       ',1,4,8)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('2023', 'DIR','DIRL ','DIS IMP LAN','Dise�o e implementaci�n de una red LAN  ','Dise�o e implementaci�n de una red LAN                                     ',1,4,8)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('2024', 'DMA','DMA  ','DIS  ACCESS','Dise�o y Manejo de BD en Access         ','Dise�o y Manejo de Bases de Datos en Access                                ',1,4,8)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('2025', 'DPI','DPCI ','PST IMPRESS','Dise�o de Presentaciones en Impress     ','Dise�o de Presentaciones por Computadora en Impress                        ',1,4,8)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('2026', 'DPI','DPCP ','PST PWRPNT ','Dise�o de Presentaciones en Powerpoint  ','Dise�o de Presentaciones por Computadora en Powerpoint                     ',1,4,8)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('2027', 'EPC','EPC  ','PRG COM INT','Entendiendo la Program de Comp Internet ','Entendiendo la Programaci�n de Computadoras e Internet                     ',1,4,8)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('2028', 'IBE','IBE  ','INTERNET BE','En Internet: Busca y encuentra          ','En Internet: Busca y encuentra                                             ',1,4,8)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('2029', 'IHE','IHE  ','INMUNOHEM  ','Inmunohematolog�a B�sica                ','Inmunohematolog�a B�sica                                                   ',1,4,8)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('2001', 'ARH','ARH  ','ADM REC H  ','Administraci�n de Recursos Humanos      ','Administraci�n de Recursos Humanos                                         ',1,6,8)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('2002', 'AC ','AC   ','ANALISIS C ','An�lisis Cl�nicos                       ','An�lisis Cl�nicos                                                          ',1,6,8)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('2003', 'BS ','BS   ','BNCO SANGRE','Banco de Sangre                         ','Banco de Sangre                                                            ',1,6,8)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('2004', 'CI ','CI   ','CONT INFORM','Contabilidad con Inform�tica            ','Contabilidad con Inform�tica                                               ',1,6,8)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('2005', 'PAV','PPYAV','PLANTAS A V','Prop. de Plantas y Dis. de �reas Verdes ','Propagaci�n de Plantas y Dise�o de �reas Verdes                            ',1,6,8)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('2006', 'IEC','IECE ','INS. ELECT ','Instalaciones El�ctricas en casas y edif','Instalaciones El�ctricas en casas y edificios                              ',1,4,8)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('2007', 'JE ','JE   ','JUEGO EMPR ','Juego Empresarial -J�venes Emprend.     ','Juego Empresarial -J�venes Emprendedores                                   ',1,6,8)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('2008', 'LQ ','LQ   ','LAB QUIMICO','Laboratorio Qu�mico                     ','Laboratorio Qu�mico                                                        ',1,6,8)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('2009', 'MSM','MSM  ','SIST MICROC','Mantenim de Sistemas de Microc�mputo    ','Mantenimiento de Sistemas de Microc�mputo                                  ',1,4,8)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('2010', 'REC','REC  ','RECREACION ','Recreaci�n                              ','Recreaci�n                                                                 ',1,6,8)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('2011', 'SBI','SBI  ','S BIB INF  ','Servicios Bibliotecarios y Rec de Inf   ','Servicios Bibliotecarios y Recursos de Informaci�n                         ',1,4,8)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('2012', 'SC ','SC   ','SIST COMP  ','Sistemas Computacionales                ','Sistemas Computacionales                                                   ',1,6,8)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('2013', 'SIM','SIMID','S MANEJ INF','Sistema Manejo de la Inf. Documental    ','Sistemas para el Manejo de la Informaci�n Documental                       ',1,4,8)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('2014', 'HDI','HDIE ','DES INT EM ','Hab para el desarrollo de Int Emocional ','Habilidades para el desarrollo de Inteligencia Emocional                   ',1,6,8)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('2015', 'LAL','LAL  ','AVENT LEER ','La aventura de Leer                     ','La aventura de Leer                                                        ',1,4,8)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('2019', 'CIA','CIAI ','CTRL ALMACE','Control Interno de Almacenes e Inv      ','Control Interno de Almacenes e Inventarios                                 ',1,4,8)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('2030', 'MEC','MEC  ','METROL C B ','Metrolog�a Cient�fica B�sica            ','Metrolog�a Cient�fica B�sica                                               ',1,4,8)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('2031', 'MIF','MIFI ','M INT F INF','Manejo inteligente de fuentes de Inf.   ','Manejo inteligente de fuentes de Informaci�n                               ',1,4,8)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('2032', 'URO','URO  ','UROANALIS  ','Uroan�lisis                             ','Uroan�lisis                                                                ',1,4,8)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('3008', 'ING','ING-5','INGLES V   ','Ingl�s V                                ','Ingl�s V                                                                   ',5,4,5)
INSERT INTO [PCEPI2].[dbo].[MATERIA] ([ID_MATERIA],[MATERIA03],[MATERIA05],[MATERIA11],[MATERIA40],[MATERIA75],[SEMESTRE],[HORAS],[AREA])
VALUES ('3009', 'ING','ING-6','INGLES VI  ','Ingl�s VI                               ','Ingl�s VI                                                                  ',6,4,5)


CREATE TABLE [dbo].[OPINION_DIRECTOR](
	[ID_OPINION_DIRECTOR] [smallint] NOT NULL,
	[DESCRIPCION] [char](15) NOT NULL,
 CONSTRAINT [PK_OPINION_DIRECTOR] PRIMARY KEY CLUSTERED 
(
	[ID_OPINION_DIRECTOR] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

INSERT INTO [PCEPI2].[dbo].[OPINION_DIRECTOR] ([ID_OPINION_DIRECTOR],[DESCRIPCION]) VALUES(1,'Viable')
INSERT INTO [PCEPI2].[dbo].[OPINION_DIRECTOR] ([ID_OPINION_DIRECTOR],[DESCRIPCION]) VALUES(2,'No viable')
INSERT INTO [PCEPI2].[dbo].[OPINION_DIRECTOR] ([ID_OPINION_DIRECTOR],[DESCRIPCION]) VALUES(3,'No Evaluado')



CREATE TABLE [dbo].[PERFIL](
	[ID_PERFIL] [smallint] NOT NULL,
	[DESCRIPCION] [varchar](50) NOT NULL,
 CONSTRAINT [PK_PERFIL] PRIMARY KEY CLUSTERED 
(
	[ID_PERFIL] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]


INSERT INTO [PCEPI2].[dbo].[PERFIL] ([ID_PERFIL] ,[DESCRIPCION]) VALUES (1,'Ense�anza - Campo Actividad')
INSERT INTO [PCEPI2].[dbo].[PERFIL] ([ID_PERFIL] ,[DESCRIPCION]) VALUES (2,'Comisi�n - Campo Actividad')
INSERT INTO [PCEPI2].[dbo].[PERFIL] ([ID_PERFIL] ,[DESCRIPCION]) VALUES (3,'Estudios - Campo de Actividad')
INSERT INTO [PCEPI2].[dbo].[PERFIL] ([ID_PERFIL] ,[DESCRIPCION]) VALUES (4,'A�o Sab�tico - Campo de Actividad')
INSERT INTO [PCEPI2].[dbo].[PERFIL] ([ID_PERFIL] ,[DESCRIPCION]) VALUES (5,'Ense�anza/Semestre Sab�tico - Campo de Actividad')
INSERT INTO [PCEPI2].[dbo].[PERFIL] ([ID_PERFIL] ,[DESCRIPCION]) VALUES (6,'Semestre Sab�tico/Ense�anza - Campo de Actividad')
INSERT INTO [PCEPI2].[dbo].[PERFIL] ([ID_PERFIL] ,[DESCRIPCION]) VALUES (7,'Licencia - Campo de Actividad')
INSERT INTO [PCEPI2].[dbo].[PERFIL] ([ID_PERFIL] ,[DESCRIPCION]) VALUES (8,'Campo de Actividad - Comisi�n')
INSERT INTO [PCEPI2].[dbo].[PERFIL] ([ID_PERFIL] ,[DESCRIPCION]) VALUES (9,'Campo de Actividad - Ense�anza')
INSERT INTO [PCEPI2].[dbo].[PERFIL] ([ID_PERFIL] ,[DESCRIPCION]) VALUES (10,'Estudios - Ense�anza')
INSERT INTO [PCEPI2].[dbo].[PERFIL] ([ID_PERFIL] ,[DESCRIPCION]) VALUES (11,'Licencia - Ense�anza')
INSERT INTO [PCEPI2].[dbo].[PERFIL] ([ID_PERFIL] ,[DESCRIPCION]) VALUES (12,'Comisi�n - Ense�anza')
INSERT INTO [PCEPI2].[dbo].[PERFIL] ([ID_PERFIL] ,[DESCRIPCION]) VALUES (13,'Ense�anza - Comisi�n')
INSERT INTO [PCEPI2].[dbo].[PERFIL] ([ID_PERFIL] ,[DESCRIPCION]) VALUES (14,'Comisi�n - Comisi�n')
INSERT INTO [PCEPI2].[dbo].[PERFIL] ([ID_PERFIL] ,[DESCRIPCION]) VALUES (15,'Ense�anza/Semestre Sab�tico - Comisi�n')
INSERT INTO [PCEPI2].[dbo].[PERFIL] ([ID_PERFIL] ,[DESCRIPCION]) VALUES (16,'Semestre Sab�tico/Ense�anza - Comisi�n')
INSERT INTO [PCEPI2].[dbo].[PERFIL] ([ID_PERFIL] ,[DESCRIPCION]) VALUES (17,'Ense�anza/Semestre Sab�tico - Comisi�n Revisora')
INSERT INTO [PCEPI2].[dbo].[PERFIL] ([ID_PERFIL] ,[DESCRIPCION]) VALUES (18,'Semestre Sab�tico/Ense�anza - Comisi�n Revisora')
INSERT INTO [PCEPI2].[dbo].[PERFIL] ([ID_PERFIL] ,[DESCRIPCION]) VALUES (19,'Participaci�n Voluntaria')
INSERT INTO [PCEPI2].[dbo].[PERFIL] ([ID_PERFIL] ,[DESCRIPCION]) VALUES (20,'Ense�anza - Comisi�n Revisora')
INSERT INTO [PCEPI2].[dbo].[PERFIL] ([ID_PERFIL] ,[DESCRIPCION]) VALUES (21,'Estudios - Comisi�n Revisora')
INSERT INTO [PCEPI2].[dbo].[PERFIL] ([ID_PERFIL] ,[DESCRIPCION]) VALUES (22,'Comisi�n - Comisi�n Revisora')
INSERT INTO [PCEPI2].[dbo].[PERFIL] ([ID_PERFIL] ,[DESCRIPCION]) VALUES (23,'Estudios - Estudios"')
INSERT INTO [PCEPI2].[dbo].[PERFIL] ([ID_PERFIL] ,[DESCRIPCION]) VALUES (24,'Ense�anza/Comisi�n - Campo de Actividad')
INSERT INTO [PCEPI2].[dbo].[PERFIL] ([ID_PERFIL] ,[DESCRIPCION]) VALUES (25,'Comisi�n/Ense�anza - Campo de Actividad')
INSERT INTO [PCEPI2].[dbo].[PERFIL] ([ID_PERFIL] ,[DESCRIPCION]) VALUES (26,'Comisi�n - Semestre Sab�tico')
INSERT INTO [PCEPI2].[dbo].[PERFIL] ([ID_PERFIL] ,[DESCRIPCION]) VALUES (27,'Semestre Sab�tico - Comisi�n')
INSERT INTO [PCEPI2].[dbo].[PERFIL] ([ID_PERFIL] ,[DESCRIPCION]) VALUES (28,'Semestre Sab�tico/Comisi�n - Campo de Actividad')
INSERT INTO [PCEPI2].[dbo].[PERFIL] ([ID_PERFIL] ,[DESCRIPCION]) VALUES (29,'Estudios/Ense�anza - Campo de Actividad')
INSERT INTO [PCEPI2].[dbo].[PERFIL] ([ID_PERFIL] ,[DESCRIPCION]) VALUES (30,'Estudios - Comisi�n')
INSERT INTO [PCEPI2].[dbo].[PERFIL] ([ID_PERFIL] ,[DESCRIPCION]) VALUES (31,'Estudios/Ense�anza - Comisi�n Revisora')

Use PCEPI2
CREATE TABLE [dbo].[PROFESOR](
	[RFC] [char](13) NOT NULL,
	[NOMBRE] [char](70) NOT NULL,
	[SEXO] [char](1) NOT NULL,
	[ID_PLANTEL] [char](6) NOT NULL,
	[CURP] [char](18) NULL,
	[ID_CATEGORIA] [smallint] NULL,
 CONSTRAINT [PK_PROFESOR] PRIMARY KEY CLUSTERED 
(
	[RFC] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[PROFESOR]  WITH CHECK ADD  CONSTRAINT [FK_PROFESOR_CATEGORIA] FOREIGN KEY([ID_CATEGORIA])
REFERENCES [dbo].[CATEGORIA] ([ID_CATEGORIA])

ALTER TABLE [dbo].[PROFESOR] CHECK CONSTRAINT [FK_PROFESOR_CATEGORIA]


INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('AADE550516CZ7','ABASCAL DOMINGUEZ ENRIQUE                                             ','M','.2....','AADE550516HDFBMN09','3')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('AUFL5612176Y1','ABURTO FIERRO LAZARO ALFREDO                                          ','M','....5.','AUFL561217HDFBRZ01','4')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('AUJJ620806BF5','ABURTO JUAREZ JORGE                                                   ','M','1.....','AUJJ620806HDFBRR04','3')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('AEPC5410307Q2','ACEVEDO PELAEZ CLAUDIA GLORIA                                         ','F','..3...','AEPC541030MMSCLL01','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('AERO641224HL9','ACEVEDO ROBLEDO OLIVIA                                                ','M','...4..','AERO641224MDFCBL09','4')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('AEFG470318QV9','ACEVES FERNANDEZ GABRIEL SATURNINO                                    ','M','1.....','AEFG470318HDFCRB08','4')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('AOAA610301UI5','ACOSTA ARELLANO JOSE ANTONIO                                          ','M','1.....','AOAA610301HDFCRN08','9')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('AOGM511226UE3','ACOSTA GALAN MARIO RAUL                                               ','M','..3...','AOGM511226HDFCLR03','4')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('AOLM450930LHA','ACOSTA LEON MERCEDES                                                  ','F','.2....','AOLM450930MMCCNR01','4')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('AORJ730822CX3','ACOSTA ROMERO JAVIER                                                  ','M','....5.','AORJ730822HDFCMV08','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('AOCM410322813','ACOSTA Y CARRASCO MARIA MARTHA                                        ','F','...4..','AOCM410322MDFCRR00','10')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('AURS500908LN2','AGUADO RODRIGUEZ SERGIO                                               ','M','....5.','AURS500908HDFGDR14','13')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('AUAR560830JP9','AGUILAR ALMAZAN ROSALIO LUIS                                          ','M','....5.','AUAR560830HDFGLS09','10')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('AUCR470627IJ5','AGUILAR CASAS ROSA MARICELA RITA                                      ','F','.....6','AUCR470627MDFGSS05','10')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('AUCR580320C29','AGUILAR CASTILLO JOSE RICARDO                                         ','M','....5.','AUCR580320HDFGSC05','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('AULA700202NK9','AGUILAR DE LEON ARMANDO TRINIDAD                                      ','M','..34..','AULA700202HCSGNR09','4')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('AAFR571210412','ALVARADO FRANCO MARIA DEL ROSARIO                                     ','F','..3...','AAFR571210MMCLRS09','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('CACM770506P95','CAMACHO CRISPIN MARCO ANTONIO                                         ','M','..3...','CACM770506HDFMRR01','38')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('AELR761223UP5','ANGELES LOPEZ REBECA                                                  ','F','..3...','AELR761223MDFNPB00','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('OIAM600731829','ORTIZ ALVAREZ MARTHA                                                  ','F','..3...','OIAM600731MDFRLR09','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('AEMG801109845','ARELLANO MORA MARIA GUADALUPE                                         ','F','.2....','AEMG801109MDFRRD06','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('GALH751014IR9','GARCIA LOZANO HIRAM NETZAHUALCOYOTL                                   ','NULL','..3...','GALH751014HDFRZR05','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('MABE6808172C6','MARTINEZ BECERRIL ELIA MARCELA                                        ','F','..3...','MABE680817MDFRCL01','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('SACJ691117MZ4','SANCHEZ DE LA CRUZ JAVIER                                             ','M','..3...','SACJ691117HDFNRV04','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('EIPA780811QW7','ESPINOSA PEREZ ARELI                                                  ','F','....5.','EIPA780811MDFSRR09','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('AALL720304E95','ALBARRAN LEON LUZ MARIA                                               ','NULL','....5.','AALL720304MDFLNZ04','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('GOSR730628SJ0','GONZALEZ SANDOVAL MARIA DEL REFUGIO                                   ','NULL','....5.','GOSR730628MDFNNF09','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('SATS640424N25','SANCHEZ TOVAR SALVADOR ALEJANDRO                                      ','M','....5.','SATS640424HSRNVL04','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('MOTL530718487','MORGAN TERCERO MARIA DE LOURDES                                       ','F','.2....','MOTL530718MDFRRR03','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('AUNF6405277I6','AGUILAR NAVA FERNANDO                                                 ','M','1.....','AUNF640527HDFGVR07','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('AASH790821P76','ARAIZA SOLANO HORACIO JAVIER                                          ','M','....5.','AASH790821HDFRLR04','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('AECC760201250','ARELLANO CRUZ CARLOS FERNANDO                                         ','M','1.....','AECC760201HDFRRR00','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('BEVE760613CK2','BERNAL VAZQUEZ ELDA                                                   ','F','1.....','BEVE760613MDFRZL09','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('CEMD760129LJ8','CERON MARTINEZ MA. DOLORES                                            ','F','1.....','CEMD760129MDFRRL09','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('CATS630211SU0','CARBALLO TRUJILLO SERGIO MANUEL                                       ','M','1.....','CATS630211HDFRRR02','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('CURN730704M42','CRUZ RODRIGUEZ NOEMI                                                  ','F','1.....','CURN730704MHGRDM05','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('PALA4807063R3','DE PAZ LOPEZ AGRIPINO                                                 ','M','1.....','PALA480706HVZZPG07','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('FOEY800208LF2','FLORES ESCAMILLA YOLANDA LETICIA                                      ','F','1.....','FOEY800208MDFLSL09','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('JIVA8208022B2','JIMENEZ VARGAS ANGEL                                                  ','M','1.....','JIVA820802HDFMRN08','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('NUTA770131LV3','NU�EZ TOLEDO JOSE ALFREDO                                             ','M','1.....','NUTA770131HDFXLL06','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('ROPM770105AD4','RODRIGUEZ PADILLA MIGUEL ANGEL                                        ','M','...4..','ROPM770105HDFDDG08','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('LURC770929EC6','LUNA ROMAN CELSO MIGUEL                                               ','M','...4..','LURC770929HDFNML05','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('FOPA680324L99','FLORES PEREZ ANA MARIA                                                ','F','...4..','FOPA680324MDFLRN09','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('PACR670111MKA','DE PAZ COLMENARES ROMEO                                               ','NULL','...4..','PACR670111HDFZLM08','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('MEGJ590616M69','MEZA GOMEZ JAIME                                                      ','M','....5.','MEGJ590616HDFZMM07','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('MOCN820830LX2','MORA CANCHOLA NANCY                                                   ','F','.2....','MOCN820830MDFRNN08','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('TECA800306PH7','TELLO CRISTIANY JOSE ANTONIO                                          ','M','1.....','TECA800306HDFLRN08','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('LOCN8601265J7','LOPEZ CASAS NADIA                                                     ','F','.2....','LOCN860126MMCPSD08','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('IACF771027LI3','ISLAS CABRERA FLOR DE MARIA                                           ','F','..3...','IACF771027MDFSBL06','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('JAAJ7803116Q9','JASSO AGUIRRE JORGE                                                   ','M','....5.','JAAJ780311HDFSGR09','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('RIAL850602ND4','RIVERA ANAYA LORENA GUADALUPE                                         ','F','1.....','RIAL850602MDFVNR01','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('VARF650302IZ3','VARGAS RODRIGUEZ FEDERICO JESUS                                       ','M','...4..','VARF650302HDFRDD03','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('GOCA840428Q18','GOMEZ CABRERA ALEJANDRA PATRICIA                                      ','F','....5.','GOCA840428MDFMBL01','37')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('REVB7201064K0','REGINO VELAZQUEZ BLANCA NIEVES SUSANA                                 ','F','....5.','REVB720106MDFGLL08','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('CARH700317MJ7','CAJAS ROMERO HUMBERTO                                                 ','M','....5.','CARH700317HDFJMM01','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('MAHN641001J61','MARTINEZ HERRERA NAHUM                                                ','NULL','.2....','MAHN641001HDFRRH00','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('GAHD821205A87','GALICIA HERRERA DAVID MICHEL                                          ','M','..3...','GAHD821205HDFLRV08','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('GAMS670205C23','GARCIA MARTINEZ SARA                                                  ','F','..3...','GAMS670205MTLRRR05','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('GAVH840224H7A','GARRIDO VILLASANA HILDA                                               ','F','..3...','GAVH840224MDFRLL09','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('AASI830826R95','ALVARADO SANCHEZ ISSIS YOLOTZIN                                       ','F','..3...','AASI830826MGRLNS03','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('PEOV780512EM7','PEREZ OVANDO VIVIANA XOCHITL                                          ','F','.2....','PEOV780512MDFRVV08','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('RALC830627JU9','RAMIREZ LOPEZ CARLOS FERNANDO                                         ','M','..3...','RALC830627HDFMPR05','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('MEME741122AH8','MENDEZ MENDOZA EDGAR                                                  ','M','....5.','MEME741122HDFNND00','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('VEGJ740609QY8','VELAZQUEZ GALLO JUAN FERNANDO                                         ','M','.2....','VEGJ740609HDFLLN03','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('PEOM800705CI3','PEREZ OLVERA MISAEL JONATAN                                           ','M','..3...','PEOM800705HDFRLS02','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('RIDJ820307RIA','RIVAS DIAZ JOSUE ISRAEL                                               ','NULL','..3...','RIDJ820307HDFVZS05','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('SAED851216L67','SALAS ESTRADA DIANA ELIZABETH                                         ','F','..3...','SAED851216MDFLSN07','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('ROHS831002339','RODRIGUEZ HERRERA SANDRA KARINA                                       ','F','......','ROHS831002MDFDRN00','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('EULS830617615','ESQUIVEL LUNA SARAI                                                   ','F','..3...','EULS830617MDFSNR02','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('EAQJ800923GB5','ESCARE�O QUIJANO JESSICA                                              ','F','1.....','EAQJ800923MDFSJS08','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('GAHC890817JS4','GARCIA HUITRON CESAR ALONSO                                           ','M','..3...','GAHC890817HDFRTS06','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('ROOJ810529EK8','ROMERO OLMOS JORGE LUIS                                               ','NULL','..3...','ROOJ810529HDFMLR00','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('DUME790213LP8','DURAN MONDRAGON ERIKA                                                 ','F','1.....','DUME790213MDFRNR00','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('CAVJ710105FLA','CAMPUZANO VARGAS MARIA DE JESUS LILIANA                               ','F','....5.','CAVJ710105MVZMRS05','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('CUSJ690526KG1','CRUZ SANCHEZ JESUS RAMIRO                                             ','NULL','....5.','CUSJ690526HDFRNS02','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('FUGN790922725','DE LA FUENTE GALINDO NADIA ALEJANDRA                                  ','F','....5.','FUGN790922MDFNLD05','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('BOMJ811230FC9','BOBADILLA MONTOYA JARED ISRAEL                                        ','M','....5.','BOMJ811230HDFBNR03','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('CATI8702101B1','CASTRO TORRES IBRAHIM GUILLERMO                                       ','M','....5.','CATI870210HVZSRB03','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('CUCJ830728RW8','CRUZ CARLON JUAN ALFREDO                                              ','NULL','....5.','CUCJ830728HDFRRN02','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('TECY881231JQ6','TEOYOTL CALDERON YAZMIN                                               ','F','...4..','TECY881231MDFYLZ02','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('MIRJ630827LA7','MIRANDA RUIZ JOSEFINA MARGARITA                                       ','F','..3...','MIRJ630827MDFRZS03','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('DOMD560104I45','DONJUAN MORALES MARIA DOLORES                                         ','NULL','....5.','DOMD560104MDFNRL02','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('CAEE840229AY4','CAMPOS ESQUIVEL ELIZABETH ELENA                                       ','F','..3...','CAEE840229MMCMSL02','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('GUGB6608245T5','GUZMAN GUEVARA BARTOLO                                                ','M','....5.','GUGB660824HPLZVR02','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('FOAO830531Q75','FLORES ALVAREZ OLGA MARIA HILDEHZA                                    ','F','..3...','FOAO830531MDFLLL06','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('SANA811012MC5','SALAZAR NAJERA AMERICA ARIANA                                         ','F','1.....','SANA811012MDFLJM01','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('GASG820325NT6','GARCIA SANDOVAL GEORGINA                                              ','F','1.....','GASG820325MJCRNR05','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('MAMC7212309ZA','MARQUEZ MARQUEZ MARIA DEL CARMEN EDNA                                 ','F','....5.','MAMC721230MDFRRR19','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('CUMF851229BE8','DE LA CRUZ MORALES FERNANDO URIEL                                     ','M','.2....','CUMF851229HDFRRR05','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('GOMR820126QR3','GOMEZ MOYA ROSINNA                                                    ','NULL','.2....','GOMR820126MDFMYS08','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('GAHP730206713','GARCIA HERNANDEZ PATRICIA ARACELI                                     ','F','.2....','GAHP730206MDFRRT08','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('GUMJ6803301Y7','GUZMAN MORALES JUAN JORGE                                             ','M','.2....','GUMJ680330HDFZRN09','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('HULH850119LG6','HUERTA LOERA HELI DAMIAN                                              ','M','.2....','HULH850119HDFRRL05','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('BEHT7103093N1','BENHUMEA HERNANDEZ TANIA GRACIELA                                     ','F','1...5.','BEHT710309MDFNRN04','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('LACP8101025P0','LAGUNA CHAVEZ PEDRO                                                   ','M','.2....','LACP810102HDFGHD02','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('LOAG790120DL3','LOPEZ ARVIZU GREGORIO                                                 ','M','.2....','LOAG790120HDFPRR08','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('MAOR831207UT8','MARTINEZ OLGUIN REYNA GUADALUPE                                       ','F','1.....','MAOR831207MDFRLY00','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('MECA810410792','MENDEZ CRUZ ALBA DIANA                                                ','F','...4..','MECA810410MDFNRL08','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('MORC6712036B4','MOLINA REYES CLAUDIA                                                  ','F','.2....','MORC671203MDFLYL00','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('NADJ840125P17','NAVA DIAZ JOSE                                                        ','M','......','NADJ840125HDFVZS05','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('VAIM5301181N7','VAZQUEZ IBARRA MIGUEL ANGEL                                           ','NULL','.2....','VAIM530118HDFZBG05','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('VIMM810805T50','VILLALPANDO MU�OZ MIRYAM YOLIZTLI                                     ','F','.2....','VIMM810805MDFLXR06','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('CARL7103087F2','CABRERA DE LA ROSA LUCINA ANGELICA                                    ','F','....5.','CARL710308MDFBSC01','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('CUVL800527K24','CRUZ VARGAS LISETTE GABRIELA                                          ','F','....5.','CUVL800527MDFRRS04','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('HEHJ770730NH0','HERNANDEZ HERNANDEZ JANET ROXANA                                      ','F','..3...','HEHJ770730MDFRRN05','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('GARC730808P27','GALINDO ROSETE CARLOS ALBERTO                                         ','M','..3...','GARC730808HDFLSR05','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('HEAY810727GS7','HERNANDEZ ARELLANO MARIA YAZMIN                                       ','F','..3...','HEAY810727MMCRRZ04','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('GULR850114LS2','GUEVARA LOPEZ RUBEN                                                   ','M','...4..','GULR850114HDFVPB01','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('ZAPR810516RM9','ZARAGOZA PEREZ ROSANGELA                                              ','F','....5.','ZAPR810516MGRRRS07','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('AUAM800106UL9','ARGUINZONIZ ALVAREZ MIGUEL JONATHAN                                   ','M','..3...','AUAM800106HDFRLG07','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('GOSJ8310136E5','GOMEZ SANCHEZ JESUS                                                   ','NULL','..3...','GOSJ831013HDFMNS02','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('ROSG651206JU9','ROSALES SANCHEZ GABRIEL                                               ','M','......','ROSG651206HDFSNB03','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('AAMA620719FV4','ARAUJO MARTINEZ JOSE ALFREDO                                          ','M','....5.','AAMA620719HDFRRL08','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('BEVP730915418','BENAVIDES VELAZQUEZ PATRICIA                                          ','F','..3...','BEVP730915MDFNLT05','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('VETE750414ER9','VEGA TOLEDANO EDGAR                                                   ','M','....5.','VETE750414HDFGLD03','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('LOHA790613TF9','LOPEZ HERNANDEZ ALMA PATRICIA                                         ','F','1.....','LOHA790613MMCPRL00','30')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('JUCD900902E44','JUAREZ CUEVAS DAVID ANGEL                                             ','M','....5.','JUCD900902HDFRVV00','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('IAHM8309303F3','IBARRA HERNANDEZ MARIANA                                              ','F','1.....','IAHM830930MDFBRR06','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('ROPH8907077E3','ROMERO PAZOS HASSIBI YESENIA                                          ','F','1.....','ROPH890707MDFMZS03','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('IAPE860320NE9','ISLAS PADILLA EDGAR ALAN                                              ','M','..3...','IAPE860320HDFSDD04','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('HETM720810HN0','HERNANDEZ TREVETHAN MAREEL                                            ','F','..3...','HETM720810MDFRRR01','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('PEAK890202RZ8','PEREZ AVILA KAREN                                                     ','F','..3...','PEAK890202MDFRVR06','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('RUEJ890419PZ2','RUEDA ESCOBEDO JUAN GUSTAVO                                           ','NULL','..3...','RUEJ890419HCSDSN02','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('VEML8109257V2','VELAZQUEZ MARQUEZ LILIANA                                             ','F','..3...','VEML810925MDFLRL03','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('BARR691223V83','BARAJAS RIVERA RAFAEL                                                 ','M','...4..','BARR691223HDFRVF02','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('SEHS741122546','SEPULVEDA HORTA SERGIO JAVIER                                         ','M','..3...','SEHS741122HDFPRR09','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('MOHM900405PP6','MONTERROSA HERNANDEZ MARTIN EDUARDO                                   ','M','....5.','MOHM900405HDFNRR04','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('CATB781204CQ0','CHAGOYA TORRES BERNARDO                                               ','M','....5.','CATB781204HDFHRR09','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('EOVJ741019KB5','ESCOBEDO VAZQUEZ JUAN CARLOS                                          ','M','....5.','EOVJ741019HDFSZN08','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('AEJA871012JH1','ARENAS JIMENEZ ARIADNA JOSEFINA                                       ','F','..3...','AEJA871012MDFRMR06','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('MOTA760218EB3','MORALES TREJO ALEJANDRO                                               ','M','....5.','MOTA760218HDFRRL07','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('OEEJ901012UU7','ORTEGA ESPINOSA JORGE ARMANDO                                         ','M','....5.','OEEJ901012HDFRSR00','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('AERH860918B11','ARMENTA RIVERA HORACIO                                                ','M','..3...','AERH860918HDFRVR09','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('SALV8306127U0','SALAZAR DE LUCIO VEIDY                                                ','M','1.....','SALV830612HCSLCD01','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('EOJC850328Q2A','ESCOBAR JUAREZ CELIA                                                  ','NULL','..3...','EOJC850328MDFSRL00','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('PEPC710713BE8','PEREZ PEREZ MARIA DEL CONSUELO                                        ','F','...45.','PEPC710713MDFRRN05','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('DISR8611101H7','DIAZ SALGADO REYNA CRISTAL                                            ','F','..3...','DISR861110MDFZLY07','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('SAMA740218QJ9','SALCEDO MEDINA ALMA ROSA                                              ','F','..3...','SAMA740218MMCLDL00','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('CAMA601205MK8','CAMPOS MIER ALEJANDRA MARIA                                           ','F','..34..','CAMA601205MDFMRL15','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('GOAH7806086L2','GONGORA ALVAREZ HUGO EDUARDO                                          ','M','..3...','GOAH780608HDFNLG08','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('EAVS770720899','ESPARZA VAZQUEZ SAUL SALOMON                                          ','M','..3...','EAVS770720HDFSZL06','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('RAAA821016MY3','RAMIREZ AYALA ARIADNA NITZE                                           ','F','..3...','RAAA821016MDFMYR01','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('MUSD7502284L2','MUNGUIA SALAZAR DAVID                                                 ','NULL','....5.','MUSD750228HDFNLV09','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('HERH640525BWA','HERNANDEZ RAMIREZ HERMILO                                             ','M','...4..','HERH640525HDFRMR08','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('PANS6510073EA','PACHECO NAJERA SERGIO                                                 ','M','1.....','PANS651007HDFCJR08','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('EARJ780309165','ESCALANTE RODRIGUEZ JUAN DE DIOS                                      ','NULL','..3...','EARJ780309HMCSDN01','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('VITL820105J77','VILLALOBOS TAKAKI MARIA DE LOURDES                                    ','F','1.....','VITL820105MDFLKR03','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('MEGO760410KGA','MEJIA GARCIA OFELIA GABRIELA                                          ','F','..34..','MEGO760410MMCJRF01','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('MOJL461018F69','MONTEALEGRE JIMENEZ LUCAS NOE                                         ','M','...4..','MOJL461018HOCNMC00','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('SAOB830316NQ7','SANCHEZ OLIVO BRENDA PATRICIA                                         ','F','...4..','SAOB830316MDFNLR05','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('MELM7107175J7','MEJENES LOPEZ MAGDALENA LINA XOCHITLAHUAC                             ','F','...4..','MELM710717MDFJPG05','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('MEAX8003051Q7','MELQUIADES ARRIAGA MARIA DEL ROSARIO                                  ','F','..3...','MXAR800305MPLLRS08','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('QUUG611220AN6','QUIJADA URIBE MA. GUADALUPE                                           ','F','1.....','QUUG611220MHGJRD11','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('AADM8202236T1','ALARCON DELGADO MARTHA LUCERO                                         ','F','...4..','AADM820223MTCLLR04','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('AECF8312097PA','ARELLANO CABEZAS FERMAN                                               ','M','...4..','AECF831209HGRRBR13','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('CAAA720625R43','CABRERA AVILA ANA LILIA                                               ','F','...4..','CAAA720625MDFBVN00','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('EIRR880829SP9','ELIZONDO RAMIREZ RUBEN                                                ','M','..3...','EIRR880829HDFLMB06','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('CUGA600810DJ2','CRUZ GALLARDO ANGELICA                                                ','NULL','...4..','CUGA600810MDFRLN09','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('CUCS720510SC2','CUAPIO CAMPOS SANDRA NOEMI                                            ','F','...4..','CUCS720510MDFPMN15','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('DIIL7703284Y2','DIAZ IBA�EZ LETICIA BERENICE                                          ','NULL','...4..','DIIL770328MDFZBT02','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('DURO650228163','DURAN REYES OSCAR JUVENAL                                             ','M','...4..','DURO650228HDFRYS09','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('EIHE610815I18','ESPINOSA HERNANDEZ MARIA EUGENIA                                      ','F','...4..','EIHE610815MDFSRG08','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('FOSR8202166N0','FLORES SANTUARIO RAYMUNDO JOAQUIN                                     ','M','...45.','FOSR820216HDFLNY08','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('GAMG841203H83','GARNICA MIRANDA MARIA GUADALUPE                                       ','F','...4..','GAMG841203MDFRRD07','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('GAPG6112028G5','GARCIA PELAEZ GENARO                                                  ','M','...4..','GAPG611202HPLRLN00','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('JEGD650703H47','JERONIMO GARCIA DANIEL                                                ','M','...4..','JEGD650703HPLRRN01','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('GOGN841119QZ7','GONZALEZ GOTTDIENER NATALIA                                           ','F','...4..','GOGN841119MDFNTT06','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('GUAL890504E60','GUZMAN AGUILAR LIZET GUADALUPE                                        ','F','...4..','GUAL890504MMCZGZ06','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('CAMB5206276N9','CHAVEZ MONTIEL BEATRIZ DEL SOCORRO                                    ','NULL','..3...','CAMB520627MDFHNT08','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('HEAI840316JW4','HERNANDEZ ALATORRE IRIS                                               ','NULL','..3...','HEAI840316MDFRLR00','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('ROPD840805TRA','RODRIGUEZ PALACIOS DARIO EDUARDO                                      ','NULL','..3...','ROPD840805HDFDLR03','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('MUPP620628575','MU�OZ PIEDRAS PABLO                                                   ','M','...4..','MUPP620628HTLXDB06','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('HETJ840624IV6','HERNANDEZ TORRES JONATHAN VICTOR JESUS                                ','M','..3...','HETJ840624HDFRRN07','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('ROBV861223263','DE LA ROSA BARAJAS VICTOR AARON                                       ','M','..3...','ROBV861223HMCSRC09','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('DOGM4802242S0','DONIS GALINDO MARTHA SUSANA                                           ','F','......','DOGM480224MDFNLR07','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('VEHF780119M56','VELAZQUEZ HERNANDEZ FERNANDO                                          ','M','...4..','VEHF780119HDFLRR07','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('MAHC810223HP5','MARTINEZ HERNANDEZ CESAR                                              ','NULL','..3...','MAHC810223HMNRRS01','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('RUSF8309209P8','RUBIALES SANCHEZ FATIMA SANDRA                                        ','F','..3...','RUSF830920MDFBNT06','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('MAAE670713SV3','MALDONADO ARELLANO MA. ERENDIRA                                       ','NULL','...4..','MAAE670713MGRLRR08','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('JITY8311293H1','JIMENEZ TABOADA YADIRA JANNET                                         ','F','.2....','JITY831129MDFMBD02','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('MURO720601CL6','MU�OZ RAMIREZ OLIVIA                                                  ','F','12....','MURO720601MDFXML07','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('AIPJ840407V55','AIZPURU PARRA JESUS RODRIGO                                           ','M','.2....','AIPJ840407HDFZRS14','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('ROBA790409NQ7','ROCHA BUITRON ALVARO                                                  ','NULL','.2....','ROBA790409HDFCTL02','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('CAMP7112195G1','CHALICO MARCIAL MARIA PATRICIA                                        ','NULL','.2....','CAMP711219MDFHRT02','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('GOCR750422495','GONZALEZ CERVERA RODOLFO                                              ','NULL','.2....','GOCR750422HDFNRD07','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('GORD8501241H6','GONZALEZ RODRIGUEZ DALIA                                              ','NULL','.2....','GORD850124MDFNDL03','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('LAHA770729CE6','LARA HERNANDEZ ADRIANA BERNARDETTE                                    ','F','.2....','LAHA770729MDFRRD05','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('GOGO700322JWA','GOMEZ GONZALEZ OLGA MARIA                                             ','F','....5.','GOGO700322MDFMNL05','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('MURM740913RT0','MU�OZ RAMIREZ MIGUEL ANGEL                                            ','M','.2....','MURM740913HDFXMG00','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('RUAC7212092A7','RUIZ ANAYA CLAUDIA JUDITH                                             ','F','..3...','RUAC721209MDFZNL08','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('VESL730305390','VELEZ SOTO LORENA ALEJANDRA                                           ','NULL','.2....','VESL730305MDFLTR06','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('VICJ861218674','VIVAS CASTRO JUAN JESUS                                               ','M','..3...','VICJ861218HMCVSN08','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('RIRN860517D37','RIOS RUIZ NATALIA                                                     ','NULL','....5.','RIRN860517MDFSZT03','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('HEBS840817JDA','HERNANDEZ BECERRIL SARAHI ALMENDRA                                    ','F','....5.','HEBS840817MDFRCR01','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('BARA8204152L2','BASTIDA RIVERA ALMA PATRICIA                                          ','F','....5.','BARA820415MDFSVL04','37')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('UUVG611007L48','URZUA VILLASE�OR GLORIA                                               ','F','12....','UUVG611007MDFRLL07','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('REVA7207193D7','REBOLLO VAZQUEZ JOSE ALBERTO                                          ','M','....5.','REVA720719HDFBZL05','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('JORI860104FC8','JORGE DE ROMAN ITZETL VIRIDIANA                                       ','NULL','.2....','JORI860104MGRRMT04','2')
INSERT INTO [PCEPI2].[dbo].[PROFESOR] ([RFC] ,[NOMBRE],[SEXO],[ID_PLANTEL],[CURP],[ID_CATEGORIA]) VALUES ('VALO770519PQ3','VALDERRAMA LOPEZ OSCAR BERSABEE                                       ','M','....5.','VALO770519HDFLPS05','2')


CREATE TABLE [dbo].[PROYECTO_GRUPO1](
	[ID_PROYECTO_GRUPO] [smallint] NOT NULL,
	[GRUPO] [char](4) NOT NULL,
	[INTERAREA] [bit] NULL,
	[INTERPLANTEL] [bit] NULL,
	[PROFESOR_ASIGNATURA] [bit] NULL,
	[OFICIO] [char](4) NOT NULL,
	[FECHA_EVALUACION] [smalldatetime] NULL,
	[TITULO] [varchar](400) NOT NULL,
	[PRODUCTO] [varchar](250) NULL,
	[ID_CAMPO] [smallint] NULL,
	[ID_MATERIA] [char](4) NULL,
	[DESCRIPCION] [varchar](2500) NULL,
	[ID_OPINION_DIRECTOR] [smallint] NULL,
	[OBSERVACIONES] [nvarchar](500) NULL,
	[IP_USUARIO] [char](15) NULL,
	[ID_USUARIO] [uniqueidentifier] NULL,
	[FECHA_REGISTRO] [smalldatetime] NULL,
	[FIRMA] [bit] NULL,
 CONSTRAINT [PK_PROYECTO_GRUPO1] PRIMARY KEY CLUSTERED 
(
	[ID_PROYECTO_GRUPO] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]


CREATE TABLE [dbo].[PROYECTO_INTEGRANTE1](
	[ID_PROYECTO_GRUPO1] [smallint] NOT NULL,
	[RFC] [char](13) NOT NULL,
	[INVITADO] [char](20) NOT NULL,
	[COORDINADOR] [char](1) NOT NULL,
	[PRESIDENTE] [int] NULL,
	[SECRETARIO] [int] NULL,
	[SABATICO] [int] NULL,
	[BANDERA] [int] NULL,
	[OFICIO] [char](4) NULL,
	[FECHA_EVALUACION] [smalldatetime] NULL,
	[FECHA_EVALUACION2] [smalldatetime] NULL,
	[ID_PERFIL] [smallint] NULL,
	[DESCRIPCION] [varchar](3000) NULL,
	[OBSERVACION] [varchar](500) NULL,
	[ID_OPINION_DIRECTOR] [smallint] NULL,
	[FUNDAMENTACION] [varchar](5000) NULL,
	[ID_EVALUACION] [smallint] NULL,
	[IP_USUARIO] [char](15) NULL,
	[ID_USUARIO] [smallint] NULL,
	[FECHA_REGISTRO] [smalldatetime] NULL,
	[FIRMA1] [bit] NULL,
	[FIRMA2] [bit] NULL,
 CONSTRAINT [PK_PROYECTO_INTEGRANTE1] PRIMARY KEY CLUSTERED 
(
	[ID_PROYECTO_GRUPO1] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]


CREATE TABLE [dbo].[PROYECTO_GRUPO1_PERIODO](
	[ID_PROYECTO_GRUPO1_PERIODO] [smallint] NOT NULL,
	[ID_PERIODO] [smallint] NOT NULL
) ON [PRIMARY]


ALTER TABLE [dbo].[PROYECTO_INTEGRANTE1]  WITH CHECK ADD  CONSTRAINT [FK_PROYECTO_INTEGRANTE1_EVALUACION] FOREIGN KEY([ID_EVALUACION])
REFERENCES [dbo].[EVALUACION] ([ID_EVALUACION])

ALTER TABLE [dbo].[PROYECTO_INTEGRANTE1] CHECK CONSTRAINT [FK_PROYECTO_INTEGRANTE1_EVALUACION]

ALTER TABLE [dbo].[PROYECTO_INTEGRANTE1]  WITH CHECK ADD  CONSTRAINT [FK_PROYECTO_INTEGRANTE1_OPINION_DIRECTOR] FOREIGN KEY([ID_OPINION_DIRECTOR])
REFERENCES [dbo].[OPINION_DIRECTOR] ([ID_OPINION_DIRECTOR])

ALTER TABLE [dbo].[PROYECTO_INTEGRANTE1] CHECK CONSTRAINT [FK_PROYECTO_INTEGRANTE1_OPINION_DIRECTOR]

ALTER TABLE [dbo].[PROYECTO_INTEGRANTE1]  WITH CHECK ADD  CONSTRAINT [FK_PROYECTO_INTEGRANTE1_PERFIL] FOREIGN KEY([ID_PERFIL])
REFERENCES [dbo].[PERFIL] ([ID_PERFIL])

ALTER TABLE [dbo].[PROYECTO_INTEGRANTE1] CHECK CONSTRAINT [FK_PROYECTO_INTEGRANTE1_PERFIL]

ALTER TABLE [dbo].[PROYECTO_INTEGRANTE1]  WITH CHECK ADD  CONSTRAINT [FK_PROYECTO_INTEGRANTE1_PROFESOR] FOREIGN KEY([RFC])
REFERENCES [dbo].[PROFESOR] ([RFC])

ALTER TABLE [dbo].[PROYECTO_INTEGRANTE1] CHECK CONSTRAINT [FK_PROYECTO_INTEGRANTE1_PROFESOR]


ALTER TABLE [dbo].[PROYECTO_GRUPO1]  WITH CHECK ADD  CONSTRAINT [FK_PROYECTO_GRUPO1_MATERIA] FOREIGN KEY([ID_MATERIA])
REFERENCES [dbo].[MATERIA] ([ID_MATERIA])

ALTER TABLE [dbo].[PROYECTO_GRUPO1] CHECK CONSTRAINT [FK_PROYECTO_GRUPO1_MATERIA]

ALTER TABLE [dbo].[PROYECTO_GRUPO1]  WITH CHECK ADD  CONSTRAINT [FK_PROYECTO_GRUPO1_OPINION_DIRECTOR] FOREIGN KEY([ID_OPINION_DIRECTOR])
REFERENCES [dbo].[OPINION_DIRECTOR] ([ID_OPINION_DIRECTOR])

ALTER TABLE [dbo].[PROYECTO_GRUPO1] CHECK CONSTRAINT [FK_PROYECTO_GRUPO1_OPINION_DIRECTOR]

ALTER TABLE [dbo].[PROYECTO_GRUPO1]  WITH CHECK ADD  CONSTRAINT [FK_PROYECTO_GRUPO1_PROYECTO_INTEGRANTE1] FOREIGN KEY([ID_PROYECTO_GRUPO])
REFERENCES [dbo].[PROYECTO_INTEGRANTE1] ([ID_PROYECTO_GRUPO1])

ALTER TABLE [dbo].[PROYECTO_GRUPO1] CHECK CONSTRAINT [FK_PROYECTO_GRUPO1_PROYECTO_INTEGRANTE1]

ALTER TABLE [dbo].[PROYECTO_GRUPO1]  WITH CHECK ADD  CONSTRAINT [FK_PROYECTO_GRUPO1_Users] FOREIGN KEY([ID_USUARIO])
REFERENCES [dbo].[Users] ([UserId])

ALTER TABLE [dbo].[PROYECTO_GRUPO1] CHECK CONSTRAINT [FK_PROYECTO_GRUPO1_Users]

ALTER TABLE [dbo].[PROYECTO_GRUPO1_PERIODO]  WITH CHECK ADD  CONSTRAINT [FK_PROYECTO_GRUPO1_PERIODO_PERIODO] FOREIGN KEY([ID_PERIODO])
REFERENCES [dbo].[PERIODO] ([ID_PERIODO])

ALTER TABLE [dbo].[PROYECTO_GRUPO1_PERIODO] CHECK CONSTRAINT [FK_PROYECTO_GRUPO1_PERIODO_PERIODO]

ALTER TABLE [dbo].[PROYECTO_GRUPO1_PERIODO]  WITH CHECK ADD  CONSTRAINT [FK_PROYECTO_GRUPO1_PERIODO_PROYECTO_GRUPO1] FOREIGN KEY([ID_PROYECTO_GRUPO1_PERIODO])
REFERENCES [dbo].[PROYECTO_GRUPO1] ([ID_PROYECTO_GRUPO])

ALTER TABLE [dbo].[PROYECTO_GRUPO1_PERIODO] CHECK CONSTRAINT [FK_PROYECTO_GRUPO1_PERIODO_PROYECTO_GRUPO1]

USE PCEPI2

SET IDENTITY_INSERT [PCEPI2].[dbo].[LEMA] ON

ALTER TABLE [dbo].[LEMA] ALTER COLUMN [TITULO] char(100) Not NULL
ALTER TABLE [dbo].[LEMA] ALTER COLUMN [TITULO] char(3000) Not NULL


INSERT INTO [PCEPI2].[dbo].[LEMA] ([ID_LEMA] ,[TITULO],[DESCRIPCION]) VALUES (1,'L1. Aceptado- A. Basica- dos semestres  ','Su proyecto de docencia 2011-2012 SE ACEPTA porque:    Se orienta hacia la atenci�n de los prop�sitos generales de las asignaturas de     y     , indicados en el programa de estudios, ya que:    a. Presenta la estrategia o secuencia did�ctica �una por semestre- que juzga m�s adecuada para el  logro de los aprendizajes de sus alumnos, de acuerdo con el programa de las asignaturas.  b. Fundamenta las razones por las que considera que con las secuencias o estrategias did�cticas seleccionadas los alumnos lograr�n los aprendizajes previstos.  c. Se�ala, de manera general, las actividades que pretende realizar a lo largo del curso para identificar y atender a los alumnos que tengan mayores dificultades para lograr los aprendizajes de la materias.    Explica de qu� manera se vincula su proyecto de �rea Complementaria con el de �rea B�sica de acuerdo con su perfil.')
INSERT INTO [PCEPI2].[dbo].[LEMA] ([ID_LEMA] ,[TITULO],[DESCRIPCION]) VALUES (2,'L1.1 Aceptado- A. B�sica-Un Semestre    ','Su proyecto de docencia 2011-2012 SE ACEPTA porque:      Se orienta hacia la atenci�n de los prop�sitos generales de la asignatura de��.indicados en el programa de estudios, ya que:    a. Presenta la estrategia o secuencia did�ctica �por el semestre- que juzga m�s adecuada para el  logro de los aprendizajes de sus alumnos, de acuerdo con el programa de la asignatura.  b. Fundamenta las razones por las que considera que con la secuencia o estrategia did�ctica seleccionada los alumnos lograr�n los aprendizajes previstos.  c. Se�ala, de manera general, las actividades que pretende realizar a lo largo del curso para identificar y atender a los alumnos que tengan mayores dificultades para lograr los aprendizajes de la materia.    Explica de qu� manera se vincula su proyecto de �rea Complementaria con el de �rea B�sica de acuerdo con su perfil.  ')
INSERT INTO [PCEPI2].[dbo].[LEMA] ([ID_LEMA] ,[TITULO],[DESCRIPCION]) VALUES (3,'L10 T�cnicos Acad�micos                 ','El porcentaje de asistencia durante el a�o fue de 100%.      El Informe 2010-2011  es SATISFACTORIO, debido a que las actividades  presentadas se adecuan a los criterios establecidos   en el Suplemento especial n�m. 2, segunda edici�n,  de la Gaceta CCH del 10 de junio de 2011: Prioridades y lineamientos institucionales para orientar los planes y de trabajo de las instancias de direcci�n y los proyectos del personal acad�mico de tiempo completo para el ciclo escolar 2011-2012; en el Protocolo de Equivalencias para el Ingreso y Promoci�n de los T�cnicos Acad�micos del CCH y la respectiva Normatividad para la Presentaci�n y Evaluaci�n de Informes Anuales, respecto a la cual cumple con las etapas de Planeaci�n, Desarrollo de Actividades y Evaluaci�n Reflexiva, anexa constancias de cursos y tres trabajos relevantes,  a su  consideraci�n.  ')
INSERT INTO [PCEPI2].[dbo].[LEMA] ([ID_LEMA] ,[TITULO],[DESCRIPCION]) VALUES (4,'L2 No Aceptado - A. B�sica              ',' Su proyecto de trabajo 2011-2012 del �rea B�sica NO SE ACEPTA por las siguientes razones:')
INSERT INTO [PCEPI2].[dbo].[LEMA] ([ID_LEMA] ,[TITULO],[DESCRIPCION]) VALUES (5,'L3 Aceptado -A.Complementaria           ',' Su proyecto de trabajo 2011-2012 del �rea Complementaria SE ACEPTA dado que:      a. Contiene los datos generales de acuerdo a su perfil:  b. Se registra en uno de los Campos de Actividad aprobados anualmente por el H. Consejo T�cnico para el periodo 2011-2012.  c. Las actividades y/o productos est�n incluidas en las definiciones del Protocolo de Equivalencias.  d. Atiende las orientaciones se�aladas en el Campo de Actividad correspondiente.  e. Se apega a las Reglas para el Reconocimiento, Creaci�n y Funcionamiento de los Grupos de Trabajo Institucionales vigente.  f. Especifica las actividades que se llevar�n a cabo y los resultados o productos que se obtendr�n durante el periodo de desarrollo del proyecto, as� como su aplicaci�n y utilidad.  g. Delimita las actividades que desarrollar� el coordinador y cada uno de los integrantes, se�alando las responsabilidades y compromisos que en lo individual les corresponder�n.  h. Es viable en funci�n del tiempo y los recursos disponibles para llevarlo a cabo.  i. Se�ala los recursos materiales y humanos que requerir� para su desarrollo.  j. Especifica c�mo se organizar�n las reuniones de trabajo en cuanto a horario y n�mero de sesiones.')
INSERT INTO [PCEPI2].[dbo].[LEMA] ([ID_LEMA] ,[TITULO],[DESCRIPCION]) VALUES (6,'L4 Act. Individual                      ','Su proyecto de trabajo del �rea Complementaria 2011-2012 SE ACEPTA dado que:    a. Se registra en uno de los Campos de Actividad aprobados anualmente por el H. Consejo T�cnico para el periodo 2011-2012.  b. Las actividades y/o productos est�n incluidas en las definiciones del Protocolo de Equivalencias.  c. Atiende las orientaciones se�aladas en el Campo de Actividad correspondiente.  d. Especifica las actividades que se llevar�n a cabo y los resultados o productos que se obtendr�n durante el periodo de desarrollo del proyecto, as� como su aplicaci�n y utilidad.  e. Es viable en funci�n del tiempo y los recursos disponibles para llevarlo a cabo.  f. Se�ala los recursos materiales y humanos que requerir� para su desarrollo.')
INSERT INTO [PCEPI2].[dbo].[LEMA] ([ID_LEMA] ,[TITULO],[DESCRIPCION]) VALUES (7,'L5 No Aceptado -A. Complementaria       ','Su proyecto de trabajo 2011-2012 del �rea Complementaria NO SE ACEPTA por las siguientes razones:')
INSERT INTO [PCEPI2].[dbo].[LEMA] ([ID_LEMA] ,[TITULO],[DESCRIPCION]) VALUES (8,'L6 Grupo sin coordinador                ','Su proyecto de trabajo del �rea Complementaria 2011-2012 SE ACEPTA dado que:    a. Se registra en uno de los Campos de Actividad aprobados anualmente por el H. Consejo T�cnico para el periodo 2011-2012.  b. Las actividades y/o productos est�n incluidas en las definiciones del Protocolo de Equivalencias.  c. Atiende las orientaciones se�aladas en el Campo de Actividad correspondiente.  d. Especifica las actividades que se llevar�n a cabo y los resultados o productos que se obtendr�n durante el periodo de desarrollo del proyecto, as� como su aplicaci�n y utilidad.  e. Es viable en funci�n del tiempo y los recursos disponibles para llevarlo a cabo.  f. Se�ala los recursos materiales y humanos que requerir� para su desarrollo. g. Especifica c�mo se organizaran las reuniones de trabajo en cuanto a horario y n�mero de sesiones.')
INSERT INTO [PCEPI2].[dbo].[LEMA] ([ID_LEMA] ,[TITULO],[DESCRIPCION]) VALUES (9,'L7 Proyectos Integrantes                ','Su proyecto de trabajo 2011-2012 del �rea Complementaria SE ACEPTA dado que:   a. Contiene los datos generales de acuerdo a su perfil.  b. Se registra en uno de los Campos de Actividad aprobados anualmente por el H. Consejo T�cnico para el periodo 2011-2012.  c. Las actividades y/o productos est�n incluidas en las definiciones del Protocolo de Equivalencias.  d. Atiende las orientaciones se�aladas en el Campo de Actividad correspondiente.  e. Se apega a las Reglas para el Reconocimiento, Creaci�n y Funcionamiento de los Grupos de Trabajo Institucionales vigente.  f. Especifica las actividades que se llevar�n a cabo y los resultados o productos que se obtendr�n durante el periodo de desarrollo del proyecto, as� como su aplicaci�n y utilidad.  g. Es viable en funci�n del tiempo y los recursos disponibles para llevarlo a cabo.  h. Se�ala los recursos materiales y humanos que requerir� para su desarrollo.')
INSERT INTO [PCEPI2].[dbo].[LEMA] ([ID_LEMA] ,[TITULO],[DESCRIPCION]) VALUES (10,'L1. �rea B�sica (Dos Semestres)         ','Su proyecto de Docencia o �rea B�sica 2012-2013 SE ACEPTA porque:    Se orienta hacia la atenci�n de los prop�sitos generales de las asignaturas de---- y----indicados en el programa de estudios, ya que:    a. Presenta dos estrategias did�cticas o dos secuencias did�cticas representativas �una por cada semestre- que considera pertinentes para el logro de los aprendizajes de sus alumnos, de acuerdo con el programa de las asignaturas.  b. Fundamenta las razones por las que considera que con las estrategias o secuencias did�cticas seleccionadas, los alumnos lograr�n los aprendizajes previstos.  c. Se�ala de manera general, las actividades que pretende realizar a lo largo del curso para identificar y atender a los alumnos que tengan mayores dificultades para lograr los aprendizajes de las materias.    Explica de qu� manera se vincula su proyecto de Apoyo a la Docencia o �rea Complementaria con el de Docencia o �rea B�sica de acuerdo con su perfil, as� como la trascendencia, calidad y pertinencia.')
INSERT INTO [PCEPI2].[dbo].[LEMA] ([ID_LEMA] ,[TITULO],[DESCRIPCION]) VALUES (11,'L10. Campo 5 (Ptes., Srios. e Int. )    ','Es importante su participaci�n en la Revisi�n y Actualizaci�n del Plan y los Programas de Estudio del Colegio, de acuerdo al Programa 9 del Eje 2 del Plan  General de Desarrollo para el Colegio de Ciencias y Humanidades 2010-2014, al Plan de Trabajo 2012-2013. Programas Prioritarios de la DGCCH (Eje IV. Orientaci�n del Colegio hacia la calidad. Programa de Actualizaci�n del Plan y los Programas de Estudio)  y a la L�nea Rectora 2 del Programa de Trabajo para la UNAM 2011-2015, del Dr. Jos� Narro Robles, as� como el Art. 44.1 del Reglamento de la Escuela Nacional Colegio de Ciencias y Humanidades y los Art�culos 56 c),  60 y dem�s aplicables del Estatuto del Personal Acad�mico de la UNAM.')
INSERT INTO [PCEPI2].[dbo].[LEMA] ([ID_LEMA] ,[TITULO],[DESCRIPCION]) VALUES (12,'L2. �rea B�sica (Un semestre)           ','Su proyecto de Docencia o �rea B�sica 2012-2013 SE ACEPTA porque:    Se orienta hacia la atenci�n de los prop�sitos generales de la asignatura de------indicados en el programa de estudios, ya que:    a. Presenta una estrategia did�ctica o una secuencia did�ctica representativa �por el semestre- que considera pertinente para el logro de los aprendizajes de sus alumnos, de acuerdo con el programa de la asignatura.  b. Fundamenta las razones por las que considera que con la estrategia o secuencia did�ctica seleccionada, los alumnos lograr�n los aprendizajes previstos.  c. Se�ala de manera general, las actividades que pretende realizar a lo largo del curso para identificar y atender a los alumnos que tengan mayores dificultades para lograr los aprendizajes de la materia.    Explica de qu� manera se vincula su proyecto de Apoyo a la Docencia o �rea Complementaria con el de Docencia o �rea B�sica de acuerdo con su perfil, as� como la trascendencia, calidad y pertinencia.')
INSERT INTO [PCEPI2].[dbo].[LEMA] ([ID_LEMA] ,[TITULO],[DESCRIPCION]) VALUES (13,'L3. �rea B�sica (No Aceptado)           ','Su proyecto de Docencia o �rea  B�sica 2012-2013 NO SE ACEPTA, por las siguientes razones:')
INSERT INTO [PCEPI2].[dbo].[LEMA] ([ID_LEMA] ,[TITULO],[DESCRIPCION]) VALUES (14,'L4. �rea Complementaria (Coordinador)   ','Su proyecto de Apoyo a la Docencia o �rea Complementaria 2012-2013 SE ACEPTA, dado que:    a. Contiene los datos generales de acuerdo a su perfil.  b. Se registra y atiende las orientaciones se�aladas en uno de los Campos de Actividad, aprobados anualmente por el H. Consejo T�cnico para el periodo 2012-2013.  c. Se apega a las Reglas para el Reconocimiento, Creaci�n y Funcionamiento de los Grupos de Trabajo Institucionales vigente   d. Precisa las actividades y/o productos de acuerdo con las definiciones del Protocolo de Equivalencias, as� como los resultados que se obtendr�n considerando su pertinencia, calidad y trascendencia.  e. Enumera los recursos materiales y humanos que requerir� para su desarrollo  f. Se�ala la viabilidad del proyecto en funci�n del tiempo, recursos y materiales disponibles para llevarlo a cabo.  g. Describe las actividades que realiza  el coordinador, as� como las de cada uno de los integrantes del grupo de trabajo, se�alando las responsabilidades y compromisos que en lo individual les correspondan.  h. Especifica las formas de organizaci�n de trabajo, especialmente las referidas a la distribuci�n, periodicidad y horario de las reuniones.')
INSERT INTO [PCEPI2].[dbo].[LEMA] ([ID_LEMA] ,[TITULO],[DESCRIPCION]) VALUES (15,'L5. �rea Complementaria(Sin coordinador)','Su proyecto de Apoyo a la Docencia o �rea Complementaria 2012-2013 SE ACEPTA, dado que:    a. Contiene los datos generales de acuerdo a su perfil.  b. Se registra  y atiende las orientaciones se�aladas en uno de los Campos de Actividad, aprobados anualmente por el H. Consejo T�cnico para el periodo 2012-2013.  c. Se apega a las Reglas para el Reconocimiento, Creaci�n y Funcionamiento de los Grupos de Trabajo Institucionales vigente   d. Precisa las actividades y/o productos de acuerdo con las definiciones del Protocolo de Equivalencias, as� como los resultados que se obtendr�n considerando su pertinencia, calidad y trascendencia.  e. Enumera los recursos materiales y humanos que requerir� para su desarrollo  f. Se�ala la viabilidad del proyecto en funci�n del tiempo, recursos y materiales disponibles para llevarlo a cabo.  g. Describe las actividades que realiza el responsable del grupo de trabajo, as� como la de cada uno de los integrantes, se�alando las responsabilidades y compromisos que en lo individual les correspondan.  h. Especifica las formas de organizaci�n de trabajo, especialmente las referidas a la distribuci�n, periodicidad y horario de las reuniones.')
INSERT INTO [PCEPI2].[dbo].[LEMA] ([ID_LEMA] ,[TITULO],[DESCRIPCION]) VALUES (16,'L6. �rea Complementaria (Integrantes)   ','Su proyecto de Apoyo a la Docencia o �rea Complementaria 2012-2013 SE ACEPTA, dado que:    a. Contiene los datos generales de acuerdo a su perfil.  b. Se registra y atiende las orientaciones se�aladas en uno de los Campos de Actividad, aprobados anualmente por el H. Consejo T�cnico para el periodo 2012-2013.  c. Se apega a las Reglas para el Reconocimiento, Creaci�n y Funcionamiento de los Grupos de Trabajo Institucionales vigente.  d. Precisa las actividades y/o productos de acuerdo con las definiciones del Protocolo de Equivalencias, as� como los resultados que se obtendr�n considerando su pertinencia, calidad y trascendencia.  e. Enumera los recursos materiales y humanos que requerir� para su desarrollo.  f. Se�ala la viabilidad del proyecto en funci�n del tiempo, recursos y materiales disponibles para llevarlo a cabo.')
INSERT INTO [PCEPI2].[dbo].[LEMA] ([ID_LEMA] ,[TITULO],[DESCRIPCION]) VALUES (17,'L7. Proyecto Individual                 ','Su proyecto de Apoyo a la Docencia o �rea Complementaria 2012-2013 SE ACEPTA, dado que:    a. Contiene los datos generales de acuerdo a su perfil.  b. Se registra y atiende las orientaciones se�aladas en uno de los Campos de Actividad, aprobados anualmente por el H. Consejo T�cnico para el periodo 2012-2013.  c. Precisa las actividades y/o productos de acuerdo con las definiciones del Protocolo de Equivalencias, as� como los resultados que se obtendr�n considerando su pertinencia, calidad y trascendencia.  d. Enumera los recursos materiales y humanos que requerir� para su desarrollo.  e. Se�ala la viabilidad del proyecto en funci�n del tiempo, recursos y materiales disponibles para llevarlo a cabo.')
INSERT INTO [PCEPI2].[dbo].[LEMA] ([ID_LEMA] ,[TITULO],[DESCRIPCION]) VALUES (18,'L8. �rea Complementaria (No aceptado)   ','Su proyecto de Apoyo a la Docencia o  �rea Complementaria 2012-2013 NO SE ACEPTA, por las siguientes razones:')
INSERT INTO [PCEPI2].[dbo].[LEMA] ([ID_LEMA] ,[TITULO],[DESCRIPCION]) VALUES (19,'L9. Lema de Comisionados                ','SE ACEPTA su proyecto de Comisi�n en �REA B�SICA para el ciclo escolar 2012-2013, debido a que se apega al Plan General de Desarrollo para el Colegio de Ciencias y Humanidades 2010-2014, a los Programas Prioritarios de la Direcci�n General del CCH, as� como al Plan de Trabajo 2012-2013, donde tiene su asignaci�n.')
INSERT INTO [PCEPI2].[dbo].[LEMA] ([ID_LEMA] ,[TITULO],[DESCRIPCION]) VALUES (20,'L1. �rea B�sica (Dos Semestres)         ','Su proyecto de Docencia o �rea B�sica 2013-2014 SE ACEPTA porque:    Se orienta hacia la atenci�n de los prop�sitos generales de las asignaturas de��. y�. , indicados en el programa de estudios, ya que:    a.  Presenta dos estrategias o secuencias did�cticas basadas en el programa de la materia �una por cada semestre- que considere pertinentes para el logro de los aprendizajes.  b.  Explica por qu� considera que con estas estrategias o secuencias did�cticas seleccionadas, los alumnos lograr�n los aprendizajes propuestos.  c.  Se�ala de manera general, las actividades que realizar� para atender a los alumnos con mayores dificultades, a fin de lograr los aprendizajes de la materia.  d.  Argumenta c�mo se vincula el proyecto de Apoyo a la Docencia o �rea Complementaria con el de Docencia o �rea B�sica.')
INSERT INTO [PCEPI2].[dbo].[LEMA] ([ID_LEMA] ,[TITULO],[DESCRIPCION]) VALUES (21,'L2. �rea B�sica (Un Semestre)           ','Su proyecto de Docencia o �rea B�sica 2013-2014 SE ACEPTA porque:    Se orienta hacia la atenci�n de los prop�sitos generales de la asignatura de........ , indicados en el programa de estudios, ya que:    a. Presenta una estrategia o secuencia did�ctica basada en el programa de la materia �por el semestre- que considere pertinente para el logro de los aprendizajes.  b. Explica por qu� considera que con esta estrategia o secuencia did�ctica seleccionada, los alumnos lograr�n los aprendizajes propuestos.  c. Se�ala de manera general, las actividades que realizar� para atender a los alumnos con mayores dificultades, a fin de lograr los aprendizajes de la materia.  d. Argumenta c�mo se vincula el proyecto de Apoyo a la Docencia o �rea Complementaria con el de Docencia o �rea B�sica.')
INSERT INTO [PCEPI2].[dbo].[LEMA] ([ID_LEMA] ,[TITULO],[DESCRIPCION]) VALUES (22,'L3. �rea B�sica (No aceptado)           ','Su proyecto de Docencia o �rea  B�sica 2013-2014 NO SE ACEPTA, por las siguientes razones:')
INSERT INTO [PCEPI2].[dbo].[LEMA] ([ID_LEMA] ,[TITULO],[DESCRIPCION]) VALUES (23,'L4. Grupo con Coordinador               ','Su proyecto de Apoyo a la Docencia o �rea Complementaria 2013- 2014 SE ACEPTA, dado que:    a. Incluye la ficha de identificaci�n actualizada al inicio del proyecto.  b. Se registra y atiende las orientaciones se�aladas en uno de los Campos de Actividad, aprobados anualmente por el H. Consejo T�cnico para el periodo 2013-2014.  c. Se apega a las Reglas para el Reconocimiento, Creaci�n y Funcionamiento de los Grupos de Trabajo Institucionales vigente.   d. Precisa las actividades y el producto comprometido a desarrollar de acuerdo con Glosario de T�rminos del Protocolo de Equivalencias para el Ingreso y Promoci�n de los profesores ordinarios de carrera del Colegio de Ciencias y Humanidades (2008) y la Actualizaci�n del Glosario de T�rminos del Protocolo de Equivalencias para el Ingreso y Promoci�n de los profesores ordinarios de carrera del Colegio de Ciencias y Humanidades (2011), as� como los posibles resultados que se obtendr�n durante el periodo de desarrollo del proyecto, considerando su pertinencia, calidad y trascendencia.  e. Enumera los recursos humanos y materiales que  se requerir�n para su desarrollo.  f. Se�ala la viabilidad del proyecto en funci�n del tiempo, recursos y materiales disponibles para llevarlo a cabo.  g. Describe las actividades que realizar� cada uno de los integrantes del grupo de trabajo (coordinadores y participantes), se�alando las responsabilidades y compromisos que en lo individual les correspondan.  h. Especifica las formas de organizaci�n de trabajo, especialmente las referidas a la distribuci�n, periodicidad y horario de las reuniones.')
INSERT INTO [PCEPI2].[dbo].[LEMA] ([ID_LEMA] ,[TITULO],[DESCRIPCION]) VALUES (24,'L5. Grupo sin Coordinador               ','Su proyecto de Apoyo a la Docencia o �rea Complementaria 2013-2014 SE ACEPTA, dado que:    a. Incluye la ficha de identificaci�n actualizada al inicio del proyecto.  b. Se registra y atiende las orientaciones se�aladas en uno de los Campos de Actividad, aprobados anualmente por el H. Consejo T�cnico para el periodo 2013-2014.  c. Se apega a las Reglas para el Reconocimiento, Creaci�n y Funcionamiento de los Grupos de Trabajo Institucionales vigente.   d. Precisa las actividades y el producto comprometido a desarrollar de acuerdo con Glosario de T�rminos del Protocolo de Equivalencias para el Ingreso y Promoci�n de los profesores ordinarios de carrera del Colegio de Ciencias y Humanidades (2008) y la Actualizaci�n del Glosario de T�rminos del Protocolo de Equivalencias para el Ingreso y Promoci�n de los profesores ordinarios de carrera del Colegio de Ciencias y Humanidades (2011), as� como los posibles resultados que se obtendr�n durante el periodo de desarrollo del proyecto, considerando su pertinencia, calidad y trascendencia.  e. Enumera los recursos humanos y materiales que  se requerir�n para su desarrollo.  f. Se�ala la viabilidad del proyecto en funci�n del tiempo, recursos y materiales disponibles para llevarlo a cabo.  g. Describe las actividades que realizar� cada uno de los integrantes del grupo de trabajo (responsable y participantes), se�alando las responsabilidades y compromisos que en lo individual les correspondan.  h. Especifica las formas de organizaci�n de trabajo, especialmente las referidas a la distribuci�n, periodicidad y horario de las reuniones.')
INSERT INTO [PCEPI2].[dbo].[LEMA] ([ID_LEMA] ,[TITULO],[DESCRIPCION]) VALUES (25,'L6. Proyecto Integrantes                ','Su proyecto de Apoyo a la Docencia o �rea Complementaria 2013-2014 SE ACEPTA, dado que:    a. Incluye la ficha de identificaci�n actualizada al inicio del proyecto.  b. Se registra y atiende las orientaciones se�aladas en uno de los Campos de Actividad, aprobados anualmente por el H. Consejo T�cnico para el periodo 2013-2014.  c. Se apega a las Reglas para el Reconocimiento, Creaci�n y Funcionamiento de los Grupos de Trabajo Institucionales vigente.   d. Precisa las actividades y el producto comprometido a desarrollar de acuerdo con Glosario de T�rminos del Protocolo de Equivalencias para el Ingreso y Promoci�n de los profesores ordinarios de carrera del Colegio de Ciencias y Humanidades (2008) y la Actualizaci�n del Glosario de T�rminos del Protocolo de Equivalencias para el Ingreso y Promoci�n de los profesores ordinarios de carrera del Colegio de Ciencias y Humanidades (2011), as� como los posibles resultados que se obtendr�n durante el periodo de desarrollo del proyecto, considerando su pertinencia, calidad y trascendencia.  e. Enumera los recursos humanos y materiales que  se requerir�n para su desarrollo.  f. Se�ala la viabilidad del proyecto en funci�n del tiempo, recursos y materiales disponibles para llevarlo a cabo.')
INSERT INTO [PCEPI2].[dbo].[LEMA] ([ID_LEMA] ,[TITULO],[DESCRIPCION]) VALUES (26,'L7. Proyecto Individual                 ','Su proyecto de Apoyo a la Docencia o �rea Complementaria 2013-2014 SE ACEPTA, dado que:    a. Incluye la ficha de identificaci�n actualizada al inicio del proyecto.  b. Se registra y atiende las orientaciones se�aladas en uno de los Campos de Actividad, aprobados anualmente por el H. Consejo T�cnico para el periodo 2013-2014.  c. Precisa las actividades y el producto comprometido a desarrollar de acuerdo con Glosario de T�rminos del Protocolo de Equivalencias para el Ingreso y Promoci�n de los profesores ordinarios de carrera del Colegio de Ciencias y Humanidades (2008) y la Actualizaci�n del Glosario de T�rminos del Protocolo de Equivalencias para el Ingreso y Promoci�n de los profesores ordinarios de carrera del Colegio de Ciencias y Humanidades (2011), as� como los posibles resultados que se obtendr�n durante el periodo de desarrollo del proyecto, considerando su pertinencia, calidad y trascendencia.  d. Enumera los recursos humanos y materiales que  se requerir�n para su desarrollo.  e. Se�ala la viabilidad del proyecto en funci�n del tiempo, recursos y materiales disponibles para llevarlo a cabo.')
INSERT INTO [PCEPI2].[dbo].[LEMA] ([ID_LEMA] ,[TITULO],[DESCRIPCION]) VALUES (27,'L8. �rea Complementaria (No aceptado)   ','Su proyecto de Apoyo a la Docencia o  �rea Complementaria 2013-2014 NO SE ACEPTA, por las siguientes razones:')
INSERT INTO [PCEPI2].[dbo].[LEMA] ([ID_LEMA] ,[TITULO],[DESCRIPCION]) VALUES (28,'L9. Campo 5                             ','Es importante su participaci�n en la Revisi�n y Actualizaci�n del Plan y los Programas de Estudios del Colegio, de acuerdo al Programa 9 del Eje 2 del Plan General de Desarrollo para el Colegio de Ciencias y Humanidades 2010-2014 y a la L�nea Rectora 2 del Programa de Trabajo para la UNAM 2011-2015, del Dr. Jos� Narro Robles, as� como al Art. 44.1 del Reglamento de la Escuela Nacional Colegio de Ciencias y Humanidades y los Art�culos 56c), 60 y dem�s aplicables del Estatuto del Personal Acad�mico de la UNAM. Asimismo, es de reconocerse otra actividad que realizar� en el Campo 5, conforme a lo establecido en el Cuadernillo de Orientaciones para el desarrollo de los proyectos de apoyo a la docencia 2013-2014, aprobado por el H. Consejo T�cnico en su sesi�n extraordinaria del 06 de mayo de 2013.')
INSERT INTO [PCEPI2].[dbo].[LEMA] ([ID_LEMA] ,[TITULO],[DESCRIPCION]) VALUES (29,'L1. �rea B�sica (Dos Semestres)         ','Su proyecto de Docencia o �rea B�sica 2014-2015 SE ACEPTA porque:    - Al inicio,  presenta la ficha de identificaci�n actualizada.  - Se orienta hacia la atenci�n de los prop�sitos generales de las asignaturas de��. y�. indicados en el programa de estudios:    a.  Presenta dos estrategias did�cticas o secuencias did�cticas basadas en el programa de la materia �una por cada semestre- que considera pertinentes para el logro de los aprendizajes.  b.  Explica por qu� con estas estrategias o secuencias did�cticas, los alumnos lograr�n los aprendizajes propuestos.  c.  Se�ala de manera general, las actividades que realizar� para atender a los alumnos con mayores dificultades a fin de lograr los aprendizajes de la materia.  d.  Argumenta c�mo se vincula el proyecto de Apoyo a la Docencia o �rea Complementaria con el de Docencia o �rea B�sica.  ')
INSERT INTO [PCEPI2].[dbo].[LEMA] ([ID_LEMA] ,[TITULO],[DESCRIPCION]) VALUES (30,'L2. �rea B�sica (Un Semestre)           ','Su proyecto de Docencia o �rea B�sica 2014-2015 SE ACEPTA porque:    - Al inicio,  presenta la ficha de identificaci�n actualizada.  - Se orienta hacia la atenci�n de los prop�sitos generales de la asignatura de........ indicados en el programa de estudios:    a. Presenta una estrategia o secuencia did�ctica basada en el programa de la materia, que considera pertinente para el logro de los aprendizajes.  b. Explica por qu� con esta estrategia o secuencia did�ctica, los alumnos lograr�n los aprendizajes propuestos.  c. Se�ala de manera general, las actividades que realizar� para atender a los alumnos con mayores dificultades a fin de lograr los aprendizajes de la materia.  d. Argumenta c�mo se vincula el proyecto de Apoyo a la Docencia o �rea Complementaria con el de Docencia o �rea B�sica.  ')
INSERT INTO [PCEPI2].[dbo].[LEMA] ([ID_LEMA] ,[TITULO],[DESCRIPCION]) VALUES (31,'L3. �rea B�sica (No aceptado)           ','Su proyecto de Docencia o �rea  B�sica 2014-2015 NO SE ACEPTA, por las siguientes razones:')
INSERT INTO [PCEPI2].[dbo].[LEMA] ([ID_LEMA] ,[TITULO],[DESCRIPCION]) VALUES (32,'L4. Coordinador de Grupo                ','Su proyecto de Apoyo a la Docencia o �rea Complementaria 2014-2015 SE ACEPTA, dado que:    a. Al inicio,  presenta la ficha de identificaci�n actualizada.  b. Se registra y atiende las orientaciones se�aladas en uno de los Campos de Actividad, aprobados por el H. Consejo T�cnico para el periodo 2014-2015.  c. Se apega a las Reglas para el Reconocimiento, Creaci�n y Funcionamiento de los Grupos de Trabajo Institucionales vigentes.   d. Precisa las actividades y el producto comprometido a desarrollar de acuerdo con el �Glosario de T�rminos� del Protocolo de Equivalencias para el Ingreso y la Promoci�n de los profesores ordinarios de carrera del Colegio de Ciencias y Humanidades (2008) y la Actualizaci�n al Protocolo de Equivalencias para el Ingreso y la Promoci�n de los profesores ordinarios de carrera del Colegio de Ciencias y Humanidades (2011), as� como los posibles resultados que se obtendr�n durante el periodo de desarrollo del proyecto, considerando su pertinencia, calidad y trascendencia.  e. Enumera los recursos humanos y materiales que se requerir�n para su desarrollo.  f. Se�ala la viabilidad del proyecto en funci�n del tiempo, recursos y materiales disponibles para llevarlo a cabo.  g. Describe las actividades que realizar� cada uno de los miembros del grupo de trabajo -coordinador(es) e integrantes-, se�alando los compromisos que en lo individual les corresponder�n.  h. Especifica las formas de organizaci�n de trabajo, especialmente las referidas a la distribuci�n, periodicidad y horario de las reuniones.')
INSERT INTO [PCEPI2].[dbo].[LEMA] ([ID_LEMA] ,[TITULO],[DESCRIPCION]) VALUES (33,'L5. Responsable de Grupo                ','Su proyecto de Apoyo a la Docencia o �rea Complementaria 2014-2015 SE ACEPTA, dado que:    a. Al inicio,  presenta la ficha de identificaci�n actualizada.  b. Se registra y atiende las orientaciones se�aladas en uno de los Campos de Actividad, aprobados por el H. Consejo T�cnico para el periodo 2014-2015.  c. Se apega a las Reglas para el Reconocimiento, Creaci�n y Funcionamiento de los Grupos de Trabajo Institucionales vigentes.   d. Precisa las actividades y el producto comprometido a desarrollar de acuerdo con el �Glosario de T�rminos� del Protocolo de Equivalencias para el Ingreso y la Promoci�n de los profesores ordinarios de carrera del Colegio de Ciencias y Humanidades (2008) y la Actualizaci�n al Protocolo de Equivalencias para el Ingreso y la Promoci�n de los profesores ordinarios de carrera del Colegio de Ciencias y Humanidades (2011), as� como los posibles resultados que se obtendr�n durante el periodo de desarrollo del proyecto, considerando su pertinencia, calidad y trascendencia.  e. Enumera los recursos humanos y materiales que se requerir�n para su desarrollo.  f. Se�ala la viabilidad del proyecto en funci�n del tiempo, recursos y materiales disponibles para llevarlo a cabo.  g. Describe las actividades que realizar� cada uno de los miembros del grupo de trabajo (responsable e integrantes), se�alando los compromisos que en lo individual les corresponder�n.  h. Especifica las formas de organizaci�n de trabajo, especialmente las referidas a la distribuci�n, periodicidad y horario de las reuniones.')
INSERT INTO [PCEPI2].[dbo].[LEMA] ([ID_LEMA] ,[TITULO],[DESCRIPCION]) VALUES (34,'L6. Integrante de Grupo                 ','Su proyecto de Apoyo a la Docencia o �rea Complementaria 2014-2015 SE ACEPTA, dado que:    a. Al inicio,  presenta la ficha de identificaci�n actualizada.  b. Se registra y atiende las orientaciones se�aladas en uno de los Campos de Actividad, aprobados por el H. Consejo T�cnico para el periodo 2014-2015.  c. Se apega a las Reglas para el Reconocimiento, Creaci�n y Funcionamiento de los Grupos de Trabajo Institucionales vigentes.   d. Precisa las actividades y el producto comprometido a desarrollar de acuerdo con el �Glosario de T�rminos� del Protocolo de Equivalencias para el Ingreso y la Promoci�n de los profesores ordinarios de carrera del Colegio de Ciencias y Humanidades (2008) y la Actualizaci�n al Protocolo de Equivalencias para el Ingreso y la Promoci�n de los profesores ordinarios de carrera del Colegio de Ciencias y Humanidades (2011), as� como los posibles resultados que se obtendr�n durante el periodo de desarrollo del proyecto, considerando su pertinencia, calidad y trascendencia.  e. Enumera los recursos humanos y materiales que se requerir�n para su desarrollo.  f. Se�ala la viabilidad del proyecto en funci�n del tiempo, recursos y materiales disponibles para llevarlo a cabo.')
INSERT INTO [PCEPI2].[dbo].[LEMA] ([ID_LEMA] ,[TITULO],[DESCRIPCION]) VALUES (35,'L7. Proyecto Individual                 ','Su proyecto de Apoyo a la Docencia o �rea Complementaria 2014-2015 SE ACEPTA, dado que:    a. Al inicio, presenta la ficha de identificaci�n actualizada.  b. Se registra y atiende las orientaciones se�aladas en uno de los Campos de Actividad, aprobados por el H. Consejo T�cnico para el periodo 2014-2015.  c. Precisa las actividades y el producto comprometido a desarrollar de acuerdo con el �Glosario de T�rminos� del Protocolo de Equivalencias para el Ingreso y la Promoci�n de los profesores ordinarios de carrera del Colegio de Ciencias y Humanidades (2008) y la Actualizaci�n al Protocolo de Equivalencias para el Ingreso y la Promoci�n de los profesores ordinarios de carrera del Colegio de Ciencias y Humanidades (2011), as� como los posibles resultados que se obtendr�n durante el periodo de desarrollo del proyecto, considerando su pertinencia, calidad y trascendencia.  d. Enumera los recursos humanos y materiales que  se requerir�n para su desarrollo.  e. Se�ala la viabilidad del proyecto en funci�n del tiempo, recursos y materiales disponibles para llevarlo a cabo.')
INSERT INTO [PCEPI2].[dbo].[LEMA] ([ID_LEMA] ,[TITULO],[DESCRIPCION]) VALUES (36,'L8. �rea Complementaria (No aceptado)   ','Su proyecto de Apoyo a la Docencia o �rea Complementaria 2014-2015 NO SE ACEPTA, por las siguientes razones:')
INSERT INTO [PCEPI2].[dbo].[LEMA] ([ID_LEMA] ,[TITULO],[DESCRIPCION]) VALUES (37,'L1. �rea Basica(Dos semestres)          ','Su proyecto de Docencia o �rea B�sica 2015-2016 SE ACEPTA porque:    a. Incluye la ficha de identificaci�n actualizada y completa.  b. Presenta la planeaci�n de las principales actividades que realizar�n sus  estudiantes en las asignaturas de��. y���..   c. Describe las acciones que llevar� a cabo para conocer las condiciones acad�micas de sus alumnos al inicio del semestre.  d. Refiere de manera general las actividades que realizar� para atender a los alumnos con mayores dificultades a fin de lograr los aprendizajes propuestos en el proyecto.  e. Expone de manera general el v�nculo entre su Apoyo a la Docencia o �rea Complementaria y su Docencia o �rea B�sica.  f. Fundamenta a partir de los prop�sitos generales de la materia, la aplicaci�n de dos estrategias o secuencias did�cticas que permitir�n a los estudiantes alcanzar los aprendizajes propuestos en el proyecto.   g. Describe las dos estrategias o secuencias did�cticas, una por cada semestre que promover�n la participaci�n individual y/o grupal de los alumnos, la adquisici�n de conocimientos b�sicos y el desarrollo de habilidades, actitudes y valores.  h. Define los instrumentos de evaluaci�n de las dos estrategias o secuencias did�cticas.  i. Incluye las fuentes de consulta que sustentan su proyecto.')
INSERT INTO [PCEPI2].[dbo].[LEMA] ([ID_LEMA] ,[TITULO],[DESCRIPCION]) VALUES (38,'L2. �rea B�sica(Un semestre)            ','Su proyecto de Docencia o �rea B�sica 2015-2016 SE ACEPTA porque:    a. Incluye la ficha de identificaci�n actualizada y completa.  b. Presenta la planeaci�n de las principales actividades que realizar�n sus  estudiantes en la asignatura de��.   c. Describe las acciones que llevar� a cabo para conocer las condiciones acad�micas de sus alumnos al inicio del semestre.  d. Refiere de manera general las actividades que realizar� para atender a los alumnos con mayores dificultades a fin de lograr los aprendizajes propuestos en el proyecto.  e. Expone de manera general el v�nculo entre su Apoyo a la Docencia o �rea Complementaria y su Docencia o �rea B�sica.  f. Fundamenta a partir de los prop�sitos generales de la materia, la aplicaci�n de la estrategia o secuencia did�ctica que permitir� a los estudiantes alcanzar los aprendizajes propuestos en el proyecto.  g. Describe la estrategia o secuencia did�ctica, que promover� la participaci�n individual y/o grupal de los alumnos, la adquisici�n de conocimientos b�sicos y el desarrollo de habilidades, actitudes y valores.  h. Define los instrumentos de evaluaci�n de la estrategia o secuencia did�ctica.  i. Incluye las fuentes de consulta que sustentan su proyecto.')
INSERT INTO [PCEPI2].[dbo].[LEMA] ([ID_LEMA] ,[TITULO],[DESCRIPCION]) VALUES (39,'L3. �rea B�sica(No aceptado)            ','Su proyecto de Docencia o �rea  B�sica 2015-2016 NO SE ACEPTA, por las siguientes razones:')
INSERT INTO [PCEPI2].[dbo].[LEMA] ([ID_LEMA] ,[TITULO],[DESCRIPCION]) VALUES (40,'L4. Coordinador de grupo                ','Su proyecto de Apoyo a la Docencia o �rea Complementaria 2015-2016 SE ACEPTA, dado que:    a. Incluye la ficha de identificaci�n actualizada y completa.  b. Desarrolla en la introducci�n los objetivos, la fundamentaci�n y los alcances del proyecto, adem�s de incluir el Campo de Actividad aprobado por el H. Consejo T�cnico de la Escuela Nacional Colegio de Ciencias y Humanidades.  c. Precisa las actividades y el producto comprometido a desarrollar de acuerdo con el �Glosario de T�rminos� del Protocolo de Equivalencias para el Ingreso y la Promoci�n de los profesores ordinarios de carrera del Colegio de Ciencias y Humanidades (2008) y la Actualizaci�n al Protocolo de Equivalencias para el Ingreso y la Promoci�n de los profesores ordinarios de carrera del Colegio de Ciencias y Humanidades (2011).  d. Enuncia la pertinencia, calidad y trascendencia de los resultados esperados al t�rmino de su proyecto.  e. Incluye el calendario o cronograma de actividades que precisa las formas de organizaci�n del trabajo: distribuci�n, periodicidad y horario de las reuniones.  f. Especifica las actividades a realizar por cada uno de los participantes del grupo de trabajo (coordinadores e integrantes) se�alando las responsabilidades y compromisos que en lo individual les corresponden.  g. Indica los recursos humanos y materiales necesarios para el desarrollo del proyecto.  h. Incluye las fuentes de consulta que sustentan su proyecto.   i. Anexa, si es el caso, las cartas compromiso de los profesores de asignatura que trabajar�n de forma voluntaria s�lo en este proyecto y cumplen con las Reglas para el Reconocimiento, Creaci�n y Funcionamiento de los Grupos de Trabajo Institucionales (2012).')
INSERT INTO [PCEPI2].[dbo].[LEMA] ([ID_LEMA] ,[TITULO],[DESCRIPCION]) VALUES (41,'L5. Responsable de grupo                ','Su proyecto de Apoyo a la Docencia o �rea Complementaria 2015-2016 SE ACEPTA, dado que:    a. Incluye la ficha de identificaci�n actualizada y completa.  b. Desarrolla en la introducci�n los objetivos, la fundamentaci�n y los alcances del proyecto, adem�s de incluir el Campo de Actividad aprobado por el H. Consejo T�cnico de la Escuela Nacional Colegio de Ciencias y Humanidades.  c. Precisa las actividades y el producto comprometido a desarrollar de acuerdo con el �Glosario de T�rminos� del Protocolo de Equivalencias para el Ingreso y la Promoci�n de los profesores ordinarios de carrera del Colegio de Ciencias y Humanidades (2008) y la Actualizaci�n al Protocolo de Equivalencias para el Ingreso y la Promoci�n de los profesores ordinarios de carrera del Colegio de Ciencias y Humanidades (2011).  d. Enuncia la pertinencia, calidad y trascendencia de los resultados esperados al t�rmino de su proyecto.  e. Incluye el calendario o cronograma de actividades que precisa las formas de organizaci�n del trabajo: distribuci�n, periodicidad y horario de las reuniones.  f. Especifica las actividades a realizar por cada uno de los participantes del grupo de trabajo (responsable e integrantes) se�alando las responsabilidades y compromisos que en lo individual les corresponden.  g. Indica los recursos humanos y materiales necesarios para el desarrollo del proyecto.  h. Incluye las fuentes de consulta que sustentan su proyecto.  i. Anexa, si es el caso, las cartas compromiso de los profesores de asignatura que trabajar�n de forma voluntaria s�lo en este proyecto y cumplen con las Reglas para el Reconocimiento, Creaci�n y Funcionamiento de los Grupos de Trabajo Institucionales (2012).')
INSERT INTO [PCEPI2].[dbo].[LEMA] ([ID_LEMA] ,[TITULO],[DESCRIPCION]) VALUES (42,'L6. Integrante de Grupo                 ','El proyecto de Apoyo a la Docencia o �rea Complementaria 2015-2016, entregado por el coordinador (s) o responsable, SE ACEPTA, dado que:    a. Incluye la ficha de identificaci�n actualizada y completa.  b. Desarrolla en la introducci�n los objetivos, la fundamentaci�n y los alcances del proyecto, adem�s de incluir el Campo de Actividad aprobado por el H. Consejo T�cnico de la Escuela Nacional Colegio de Ciencias y Humanidades.  c. Precisa las actividades y el producto comprometido a desarrollar de acuerdo con el �Glosario de T�rminos� del Protocolo de Equivalencias para el Ingreso y la Promoci�n de los profesores ordinarios de carrera del Colegio de Ciencias y Humanidades (2008) y la Actualizaci�n al Protocolo de Equivalencias para el Ingreso y la Promoci�n de los profesores ordinarios de carrera del Colegio de Ciencias y Humanidades (2011).  d. Enuncia la pertinencia, calidad y trascendencia de los resultados esperados al t�rmino de su proyecto.  e. Se�ala las responsabilidades y compromisos que en lo individual le corresponden.  f. Indica los recursos humanos y materiales necesarios para el desarrollo del proyecto.  g. Incluye las fuentes de consulta que sustentan su proyecto.')
INSERT INTO [PCEPI2].[dbo].[LEMA] ([ID_LEMA] ,[TITULO],[DESCRIPCION]) VALUES (43,'L7. Proyecto Individual                 ','Su proyecto de Apoyo a la Docencia o �rea Complementaria 2015-2016 SE ACEPTA, dado que:    a. Incluye la ficha de identificaci�n actualizada y completa.  b. Desarrolla en la introducci�n los objetivos, la fundamentaci�n y los alcances del proyecto, adem�s de incluir el Campo de Actividad aprobado por el H. Consejo T�cnico de la Escuela Nacional Colegio de Ciencias y Humanidades.  c. Precisa las actividades y el producto comprometido a desarrollar de acuerdo con el �Glosario de T�rminos� del Protocolo de Equivalencias para el Ingreso y la Promoci�n de los profesores ordinarios de carrera del Colegio de Ciencias y Humanidades (2008) y la Actualizaci�n al Protocolo de Equivalencias para el Ingreso y la Promoci�n de los profesores ordinarios de carrera del Colegio de Ciencias y Humanidades (2011).  d. Enuncia la pertinencia, calidad y trascendencia de los resultados esperados al t�rmino de su proyecto.  j. Indica los recursos humanos y materiales necesarios para el desarrollo del proyecto.  e. Incluye las fuentes de consulta que sustentan su proyecto.')
INSERT INTO [PCEPI2].[dbo].[LEMA] ([ID_LEMA] ,[TITULO],[DESCRIPCION]) VALUES (44,'L8. �rea complementaria(No aceptado)    ','Su proyecto de Apoyo a la Docencia o �rea Complementaria 2015-2016 NO SE ACEPTA, por las siguientes razones:')

SET IDENTITY_INSERT [PCEPI2].[dbo].[LEMA] OFF

Use PCEPI2

SET IDENTITY_INSERT [PCEPI2].[dbo].[PERIODO] ON

INSERT INTO [PCEPI2].[dbo].[PERIODO] ([ID_PERIODO] ,[NOMBRE_PERIODO],[FECHA_INICIO],[FECHA_TERMINO]) VALUES (1,'2011-2012','08/08/2011','05/08/2012')
INSERT INTO [PCEPI2].[dbo].[PERIODO] ([ID_PERIODO] ,[NOMBRE_PERIODO],[FECHA_INICIO],[FECHA_TERMINO]) VALUES (2,'2012-2013','08/08/2011','05/08/2012')
INSERT INTO [PCEPI2].[dbo].[PERIODO] ([ID_PERIODO] ,[NOMBRE_PERIODO],[FECHA_INICIO],[FECHA_TERMINO]) VALUES (3,'2013-2014','08/08/2011','05/08/2012')
INSERT INTO [PCEPI2].[dbo].[PERIODO] ([ID_PERIODO] ,[NOMBRE_PERIODO],[FECHA_INICIO],[FECHA_TERMINO]) VALUES (4,'2014-2015','08/08/2011','05/08/2012')
INSERT INTO [PCEPI2].[dbo].[PERIODO] ([ID_PERIODO] ,[NOMBRE_PERIODO],[FECHA_INICIO],[FECHA_TERMINO]) VALUES (5,'2015-2016','08/08/2011','05/08/2012')

SET IDENTITY_INSERT [PCEPI2].[dbo].[PERIODO] OFF

SET IDENTITY_INSERT [PCEPI2].[dbo].[PLANTEL] ON

INSERT INTO [PCEPI2].[dbo].[PLANTEL] ([ID_PLANTEL] ,[NOMBRE],[CVE_DEPENDENCIA]) VALUES (1,'Azcapotzalco','47202')
INSERT INTO [PCEPI2].[dbo].[PLANTEL] ([ID_PLANTEL] ,[NOMBRE],[CVE_DEPENDENCIA]) VALUES (2,'Naucalpan','47203')
INSERT INTO [PCEPI2].[dbo].[PLANTEL] ([ID_PLANTEL] ,[NOMBRE],[CVE_DEPENDENCIA]) VALUES (3,'Vallejo','47204')
INSERT INTO [PCEPI2].[dbo].[PLANTEL] ([ID_PLANTEL] ,[NOMBRE],[CVE_DEPENDENCIA]) VALUES (4,'Oriente','47205')
INSERT INTO [PCEPI2].[dbo].[PLANTEL] ([ID_PLANTEL] ,[NOMBRE],[CVE_DEPENDENCIA]) VALUES (5,'Sur','47206')
INSERT INTO [PCEPI2].[dbo].[PLANTEL] ([ID_PLANTEL] ,[NOMBRE],[CVE_DEPENDENCIA]) VALUES (6,'Direcci�n General','47201')

SET IDENTITY_INSERT [PCEPI2].[dbo].[PLANTEL] OFF
