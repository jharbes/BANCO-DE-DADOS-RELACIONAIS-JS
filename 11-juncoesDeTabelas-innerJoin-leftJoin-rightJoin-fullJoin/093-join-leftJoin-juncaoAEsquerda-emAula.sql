use universidade_u;

show tables;

select * from aluno;
select * from telefone;

-- nesse caso retorna-se todos os registros de aluno e apenas os registros de
-- telefone que possuem relacionamento com algum registro de aluno
select
	*
from
	aluno left join telefone on (aluno.idaluno = telefone.fk_idaluno);
    

-- filtrando apenas os alunos que sao mulheres
select
	*
from
	aluno left join telefone on (aluno.idaluno = telefone.fk_idaluno)
where
	sexo='F';
    
select * from curso;
select * from disciplina;
select * from professor;


select
	*
from
	curso left join disciplina on (curso.idcurso = disciplina.fk_idcurso);

-- acerto do nome de Ract Native para React Native    
update disciplina set descricao='React Native' where iddisciplina=14;


-- agora usamos left join para tambem colocarmos o professor de cada disciplina
-- na tabela em questao
select
	*
from
	curso left join disciplina on (curso.idcurso = disciplina.fk_idcurso)
    left join professor on (disciplina.fk_idprofessor=professor.idprofessor);
    
    
select
	*
from
	curso left join disciplina on (curso.idcurso = disciplina.fk_idcurso)
    left join professor on (disciplina.fk_idprofessor=professor.idprofessor)
where
	idcurso=1;