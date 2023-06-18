use universidade_u;

-- usando a instrucao case na projecao de colunas

select
	a.idaluno,
    a.nome,
    a.sexo,
    case
		when a.sexo='M' then 'Masculino'
        when a.sexo='F' then 'Feminino'
	end as descricao_sexo, -- em projecao de colunas nao utilizamos o end case, apenas o end
    t.numero,
    t.tipo
from
	aluno as a 
left join 
	telefone as t 
on (a.idaluno = t.fk_idaluno);



select
	a.idaluno,
    a.nome,
    a.sexo,
    case
		when a.sexo='M' then 'Masculino'
        else 'Feminino'
	end as descricao_sexo, -- em projecao de colunas nao utilizamos o end case, apenas o end
    t.numero,
    t.tipo,
    case
		when t.tipo='res' then 'Residencial'
		when t.tipo='cel' then 'Celular'
        when t.tipo='com' then 'Comercial'
	end as 'tipo_telefone'
from
	aluno as a 
left join 
	telefone as t 
on (a.idaluno = t.fk_idaluno);