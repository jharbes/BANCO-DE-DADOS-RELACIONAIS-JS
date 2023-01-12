use universidade_u;

/* estados com mais alunos -  alunos por estado */
select 
	estado, count(*) as total 
from 
	endereco
group by 
	estado
order by total desc
limit 3;   
    

/* cursos mais vendidos - alunos por curso*/
select 
	fk_idcurso, count(*) as total
from 
	aluno_curso
group by
	fk_idcurso;	
    
select distinct(fk_idcurso) from aluno_curso;

/*
1 - 2
2 - 2
3 - 2
4 - 2
*/

select * from aluno_curso;      

