USE [congress]
GO

/****** Object:  Table [dbo].[members]    Script Date: 3/6/2021 3:07:59 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[members](
	[m_id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nchar](50) NULL,
	[state] [nchar](50) NULL,
	[party] [nchar](50) NULL,
	[district] [nchar](50) NULL,
	[picture] [varbinary](max) NULL,
	[picstring] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


