IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Movie]') AND type in (N'U'))
	DROP TABLE [dbo].[Movie]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Movie]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Movie]
(
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Created] [Date] NOT NULL,
	[Title] [varchar](255) NOT NULL,	
	[Director][varchar](255) NOT NULL,
	[YearOfRelease] [varchar](4) NOT NULL,
	PRIMARY KEY CLUSTERED
	(
		[Id] ASC
	)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

SET ANSI_PADDING OFF
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO