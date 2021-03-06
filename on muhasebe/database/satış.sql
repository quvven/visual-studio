/*
   26 Mayıs 2013 Pazar20:02:54
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
CREATE TABLE dbo.satis
	(
	[Belge No] int NOT NULL,
	[İşlem Tarihi] date NOT NULL,
	[İşlem Saati] time(7) NOT NULL,
	[Müşteri / Kurum Adı] nchar(30) NOT NULL,
	[Müşteri Vergi No] int NULL,
	[Müşteri Hesap No] int NULL,
	[Satış Yapan] nchar(30) NULL,
	[Satılan Ürün] varchar(50) NOT NULL,
	KDV money NOT NULL,
	TOPLAM money NOT NULL,
	[Müşteri Vergi Dairesi] nchar(20) NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.satis ADD CONSTRAINT
	PK_satis PRIMARY KEY CLUSTERED 
	(
	[Belge No]
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.satis SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
