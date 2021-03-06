/*
   26 Mayıs 2013 Pazar19:47:00
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
CREATE TABLE dbo.müşteriler
	(
	[Müşteri No] int NOT NULL,
	[Müşteri Ad Soyad] nchar(30) NOT NULL,
	[İrtibat Telefon] varchar(MAX) NOT NULL,
	[Adres Bilgisi] varchar(MAX) NULL,
	[İşyeri Bilgileri] varchar(MAX) NULL,
	[Lakab Alaka Bilgileri] varchar(MAX) NULL,
	[Vergi TC Kimlik] int NULL,
	[Vergi Dairesi] nchar(20) NULL,
	[Hesap Numarası] int NULL
	)  ON [PRIMARY]
	 TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE dbo.müşteriler ADD CONSTRAINT
	PK_müşteriler PRIMARY KEY CLUSTERED 
	(
	[Müşteri No]
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.müşteriler SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
