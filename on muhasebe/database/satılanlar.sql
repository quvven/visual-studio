/*
   26 Mayıs 2013 Pazar19:59:10
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
CREATE TABLE dbo.satılanlar
	(
	[Belge No] int NOT NULL,
	[Satış No] int NOT NULL,
	[Satılan Ürün Adı] varchar(50) NOT NULL,
	Miktarı int NOT NULL,
	Birimi nchar(10) NOT NULL,
	KDV money NOT NULL,
	[Satış Fiyatı] money NOT NULL,
	[Satış Tutarı] money NOT NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.satılanlar ADD CONSTRAINT
	PK_satılanlar PRIMARY KEY CLUSTERED 
	(
	[Belge No]
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.satılanlar SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
