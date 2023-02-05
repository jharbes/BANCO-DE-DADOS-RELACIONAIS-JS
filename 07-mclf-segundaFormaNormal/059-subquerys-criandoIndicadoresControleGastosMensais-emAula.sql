use universidade_U;

select * from gasto;

-- descobrindo o id do registro realizado e do registro previsto
select idgasto from gasto where ano=2019 and tipo='realizado';
select idgasto from gasto where ano=2019 and tipo='previsto';

-- aqui substituimos o id no final (pois teoricamente nao sabemos qual eh)
-- pela subquery (innerquery) em questao, pois ela retornara o id e 
-- consequentemente a informacao de que precisamos
select 
	jan 
from 
	gasto 
where 
	idgasto=(select idgasto from gasto where ano=2019 and tipo='realizado');
    

-- aqui utilizaremos a query acima como subquerys de outro select visando efetuar 
-- uma operacao aritmetica entre elas
select
	(select 
		jan 
	from 
		gasto 
	where 
		idgasto=(select idgasto from gasto where ano=2019 and tipo='previsto')) as realizado_jan
	,
    (select 
		jan 
	from 
		gasto 
	where 
		idgasto=(select idgasto from gasto where ano=2019 and tipo='realizado')) as previsto_jan;


-- agora faremos uma operacao visando mostrar tanto o resultados previsto e realizado quanto
-- suas diferencas, observe abaixo:
select
	(select 
		jan 
	from 
		gasto 
	where 
		idgasto=(select idgasto from gasto where ano=2019 and tipo='previsto')) as realizado_jan
	,
    (select 
		jan 
	from 
		gasto 
	where 
		idgasto=(select idgasto from gasto where ano=2019 and tipo='realizado')) as previsto_jan
	,
    (select 
		jan 
	from 
		gasto 
	where 
		idgasto=(select idgasto from gasto where ano=2019 and tipo='previsto'))
	-
    (select 
		jan 
	from 
		gasto 
	where 
		idgasto=(select idgasto from gasto where ano=2019 and tipo='realizado')) as diferenca_jan;
        
        
-- agora faremos uma consulta com varios meses do ano mostrando suas diferencas entre
-- previsto e realizado
select
	(select 
		jan 
	from 
		gasto 
	where 
		idgasto=(select idgasto from gasto where ano=2019 and tipo='previsto'))
	-
    (select 
		jan 
	from 
		gasto 
	where 
		idgasto=(select idgasto from gasto where ano=2019 and tipo='realizado')) as diferenca_jan,
	(select 
		fev
	from 
		gasto 
	where 
		idgasto=(select idgasto from gasto where ano=2019 and tipo='previsto'))
	-
    (select 
		fev
	from 
		gasto 
	where 
		idgasto=(select idgasto from gasto where ano=2019 and tipo='realizado')) as diferenca_fev,
	(select 
		mar
	from 
		gasto 
	where 
		idgasto=(select idgasto from gasto where ano=2019 and tipo='previsto'))
	-
    (select 
		mar
	from 
		gasto 
	where 
		idgasto=(select idgasto from gasto where ano=2019 and tipo='realizado')) as diferenca_mar,
	(select 
		abr
	from 
		gasto 
	where 
		idgasto=(select idgasto from gasto where ano=2019 and tipo='previsto'))
	-
    (select 
		abr
	from 
		gasto 
	where 
		idgasto=(select idgasto from gasto where ano=2019 and tipo='realizado')) as diferenca_abr,
	(select 
		mai
	from 
		gasto 
	where 
		idgasto=(select idgasto from gasto where ano=2019 and tipo='previsto'))
	-
    (select 
		mai
	from 
		gasto 
	where 
		idgasto=(select idgasto from gasto where ano=2019 and tipo='realizado')) as diferenca_mai;