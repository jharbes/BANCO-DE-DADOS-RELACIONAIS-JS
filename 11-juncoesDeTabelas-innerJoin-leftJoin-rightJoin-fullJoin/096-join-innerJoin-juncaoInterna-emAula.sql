use universidade_u;

-- retornara apenas os registros que possuem relacionamento entre si para
-- AMBAS as tabelas, se nao houver relacionamento nao havera retorno nesse caso,
-- para qualquer tabela que seja
select
	*
from
	disciplina as d inner join professor as p on (d.fk_idprofessor=p.idprofessor);