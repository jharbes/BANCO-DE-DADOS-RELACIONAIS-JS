use universidade_u;

select
	*
from disciplina as d left join professor as p on (d.fk_idprofessor=p.idprofessor);

select
	*
from disciplina as d right join professor as p on (d.fk_idprofessor=p.idprofessor);


-- MySQL nao possui suporte para o full outer join
-- podemos simular o full outer join fazendo um left join e um right join
-- e depois usando o union entre eles (o union garante o distinct evitando
-- que hajam registros duplicados)
-- trazendo assim disciplinas sem professores e professores sem disciplinas
select
	*
from disciplina as d left join professor as p on (d.fk_idprofessor=p.idprofessor)
	union /* faz a uniao entre os registros das consultas (distinct) */
select
	*
from disciplina as d right join professor as p on (d.fk_idprofessor=p.idprofessor);