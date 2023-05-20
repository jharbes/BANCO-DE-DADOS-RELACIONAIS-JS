use universidade_u;

select
    *
from
    disciplina as d 
    left join professor as p on (d.fk_idprofessor = p.idprofessor)
union /* faz a uni�o entre os registros das consultas (distinct) */
select
    *
from
    disciplina as d 
    right join professor as p on (d.fk_idprofessor = p.idprofessor);
