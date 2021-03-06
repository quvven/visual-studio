/*
   26 Mayıs 2013 Pazar19:56:02
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
CREATE TABLE dbo.ürünler
	(
	[Kayıt No] int NOT NULL,
	[Barkod No] varchar(50) NULL,
	[Ürün Adı] varchar(50) NOT NULL,
	İşlevi varchar(50) NOT NULL,
	Grubu varchar(50) NOT NULL,
	Özellikleri varchar(50) NULL,
	[Garanti Süresi] nchar(10) NULL,
	[Paket İçeriği] varchar(MAX) NULL,
	[Ürün Konumu] nchar(20) NOT NULL,
	Miktarı int NOT NULL,
	Birimi nchar(10) NOT NULL,
	Açıklama varchar(50) NULL,
	[Satış Durumu] nchar(10) NOT NULL,
	Fiyatı money NOT NULL
	)  ON [PRIMARY]
	 TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE dbo.ürünler ADD CONSTRAINT
	PK_ürünler PRIMARY KEY CLUSTERED 
	(
	[Kayıt No]
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.ürünler SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
