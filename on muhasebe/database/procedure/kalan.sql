USE [cagbil]
GO
/****** Object:  StoredProcedure [dbo].[kalan]    Script Date: 06/15/2013 17:01:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
alter procedure [dbo].[kalan]
@bno varchar(50),
@mkt int

as

set nocount on

begin transaction

declare @mk int

select @mk = Miktarı from dbo.ürünler where [Barkod No]=@bno

if @mk >= 0 and @mk >= @mkt begin

select Miktarı from ürünler where [Barkod No]=@bno

end
else begin

select 'eksik'

end
commit transaction