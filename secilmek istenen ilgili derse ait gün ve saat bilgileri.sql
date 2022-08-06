USE [Okul]


--secilmek istenen ilgili derse ait gün ve saat bilgilerini getiren fonsiyon:

ALTER function [dbo].[IlgiliDerseAitGünVeSaatBilgisi](@ders int)
returns table
as
return
select od.Ders_Id, d.Adi,od.GunAdi,od.BaslangicSaati,od.BitisSaati from dbo.OgretmenDers as od 
inner join dbo.Ders as d on d.Id=od.Ders_Id and d.Statu=1
where Ders_Id=@ders
and
od.Statu=1




--cagiralim
select * from  dbo.IlgiliDerseAitGünVeSaatBilgisi(8)







--where clause kontrolü:

select * from dbo.OgretmenDers as od where od.Ders_Id=8