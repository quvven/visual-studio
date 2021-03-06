USE [cagbil]
GO
/****** Object:  StoredProcedure [dbo].[miktarla]    Script Date: 06/15/2013 17:01:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
alter procedure [dbo].[miktarla]
@indx varchar(50),
@miktar int

as 
set nocount on

begin transaction
declare @mk int
declare @mkafter int

select @mk = Miktarı from dbo.ürünler where [Barkod No]=@indx

if @mk >= 1 begin
/* ana if şartı başlangıç... */

if @mk >= @miktar begin

set @mk = (@mk - @miktar)

update ürünler set Miktarı=@mk where [Barkod No]=@indx

select Miktarı from ürünler as ret

end
else begin

update ürünler set Miktarı=0 where [Barkod No]=@indx

execute ihtiyac_p @indx

end

/* ana if şartı sonu... */
end
commit transaction