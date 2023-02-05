use universidade_u;

-- SQL retornando operacoes aritmeticas
select 144 + 257;

-- SQL retornando operacoes aritmeticas com um nome escolhido
select 144 + 257 as total;

-- soma
select (144 + 257) as total;

-- subtracao
select (144 - 257) as total;

-- multiplicacao
select (144 * 257) as total;

-- divisao
select (144 / 257) as total;

select * from gasto;

insert into gasto(ano, tipo, jan, fev, mar, abr, mai, jun, jul, ago, `set`, `out`, nov, dez)values('2019', 'previsto', 18000, 17000, 19000, 20000, 17000, 18000, 18500, 18500, 1800, 17500, 18000, 17000);

insert into gasto(ano, tipo, jan)values('2019', 'realizado', 18353.20);

update gasto set fev = 17555.55 where idgasto = 2;
update gasto set mar = 19435.73 where idgasto = 2;
update gasto set abr = 22753.12 where idgasto = 2;
update gasto set mai = 16198.12 where idgasto = 2;
update gasto set jun = 17451.88 where idgasto = 2;
update gasto set jul = 18975.40 where idgasto = 2;
update gasto set ago = 19163.84 where idgasto = 2;
update gasto set `set` = 18132.56 where idgasto = 2;
update gasto set `out` = 17667.91 where idgasto = 2;
update gasto set nov = 17936.33 where idgasto = 2;
update gasto set dez = 17125.88 where idgasto = 2;

-- retornando os meses com gastos realizados mais o seu total no final
select
	jan,fev,mar,abr,mai,jun,jul,ago,`set`,`out`,nov,dez,
	jan+fev+mar+abr+mai+jun+jul+ago+`set`+`out`+nov+dez as total
from 
	gasto
where
	idgasto=2;
    

-- retornando os meses com gastos realizados mais o seu total no final
-- e a media por mes logo apos o total, usamos o truncate para deixar apenas
-- duas casas decimais no resultado
select
	jan,fev,mar,abr,mai,jun,jul,ago,`set`,`out`,nov,dez,
	jan+fev+mar+abr+mai+jun+jul+ago+`set`+`out`+nov+dez as total,
    truncate((jan+fev+mar+abr+mai+jun+jul+ago+`set`+`out`+nov+dez)/12,2) as media
from 
	gasto
where
	idgasto=2;