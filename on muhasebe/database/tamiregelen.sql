/*
   26 Mayıs 2013 Pazar20:11:24
   User: user
   Server: DELL-PC\SQLEXPRESS
   Database: cagbil
   Application: 
*/

/* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/
BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.tamiregelen
	(
	[Belge No] int NOT NULL,
	[Etiket No] int NOT NULL,
	[Teslim Alma] datetime NOT NULL,
	Sahibi nchar(30) NOT NULL,
	[İrtibat Telefon] varchar(MAX) NOT NULL,
	[Cihaz Adı] nchar(50) NOT NULL,
	Bileşenler varchar(MAX) NOT NULL,
	[Şikayet / İstek] varchar(MAX) NOT NULL,
	[Not / Açıklama] varchar(MAX) NULL,
	[Teslim Etme] datetime NULL,
	[Garanti Durumu] datetime NULL,
	[Yapılan İşlem] varchar(MAX) NULL,
	[Ücret / Bedel] money NULL
	)  ON [PRIMARY]
	 TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE dbo.tamiregelen ADD CONSTRAINT
	PK_tamiregelen PRIMARY KEY CLUSTERED 
	(
	[Belge No]
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.tamiregelen SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
