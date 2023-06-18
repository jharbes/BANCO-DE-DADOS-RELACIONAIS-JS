use universidade_u;

select
	a.idaluno,
    a.nome,
    case
		when a.sexo = 'M' then 'Masculino'
        else 'Feminino'
	end as sexo,
    t.numero,
    case
		when t.tipo = 'res' then 'Residencial'
        when t.tipo = 'cel'then 'Celular'
        when t.tipo = 'com' then 'Comercial'
	end as tipo
from
	aluno as a left join telefone as t on (a.idaluno = t.fk_idaluno);
