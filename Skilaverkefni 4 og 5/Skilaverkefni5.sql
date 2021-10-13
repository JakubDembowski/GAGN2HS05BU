-- 5.01:
delimiter €€
drop function if exists FjoldiSkylduafanga €€

create function FjoldiSkylduafanga(brautar_numer int)
returns int deterministic
begin
	declare fjoldi int;
    
    select count(*) into fjoldi from AfangarBrauta
    where brautarNumer = brautar_numer and erSkylda = true;
    
    return fjoldi;
end €€

delimiter ;

select FjoldiSkylduafanga(7) as Fjöldi;

---
-- 5.02:
delimiter $$
drop function if exists Meðaleinkunn $$

create function Meðaleinkunn(nemandi_id int)
returns float deterministic
begin
	-- Ykkar kóði hér.  Muna return! og muna að testa :-)
end $$
delimiter ;

---
-- 5.03:
delimiter $$
drop function if exists FjoldiUndanfara $$

create function FjoldiUndanfara(afanga_numer char(15))
returns int deterministic
begin
	-- Ykkar kóði hér.  Muna return! og muna að testa :-)
end $$
delimiter ;

---
-- 5.10:
create view AfangaframbodUndirskola
as
	select Skolar.skolaHeiti as Skoli, UndirSkolar.heiti as Undirskoli, Brautir.heitiBrautar as Braut, Afangar.afangaNumer as Áfanganúmer,
		   Afangar.afangaHeiti as Áfangaheiti, AfangarBrauta.onnAfanga as Önn, 
           case AfangarBrauta.erSkylda
				when 1 then 'Skylda'
				else 'Val'
			end as Tegund
	from Skolar
    inner join Undirskolar on Skolar.skolaNumer = Undirskolar.skolaNumer
    inner join Brautir on Undirskolar.undirskolaNumer = Brautir.undirskolaNumer
    inner join AfangarBrauta on Brautir.brautarNumer = AfangarBrauta.brautarNumer
    inner join Afangar on AfangarBrauta.afangaNumer = Afangar.afangaNumer
    order by Skolar.skolaHeiti, UndirSkolar.heiti, Brautir.heitiBrautar;
