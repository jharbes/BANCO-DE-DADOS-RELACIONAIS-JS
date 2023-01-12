use universidade_u;

-- calculando alunos por estado ou alunos por estado
select
	estado,count(*) as total
from
	endereco
group by
	estado;
    
select
	estado,count(*) as total
from
	endereco
group by
	estado
order by total desc -- quantidade decrescente
limit 3; -- limitado a 3 registros na consulta


-- calculando os cursos mais vendidos ou alunos por curso
select
	fk_idcurso,count(*) as totalAlunosPorCurso
from
	aluno_curso
group by
	fk_idcurso;