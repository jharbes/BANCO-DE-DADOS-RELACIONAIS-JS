use universidade_u;

-- duas possibilidades para transferir os dados da tabela aluno para a tabela aluno_curso:
-- 1a- pegar os dados da aluno e cadastrar manualmente na aluno_curso
-- 2a- query de update com uma subquery pra recuperar os dados

select
	idAluno, dataInscricaoCurso,valorPagoCurso
from
	aluno
where
	idAluno=1;

select * from aluno;
select * from aluno_curso;


update
	aluno_curso
set
	dataInscricaoCurso=(select 
    dataInscricaoCurso from aluno where idAluno=4),
    valorPagoCurso=(select
	valorPagoCurso from aluno where idAluno=4)
where
	fk_idAluno=4;
    
alter table aluno drop column dataInscricaoCurso;
alter table aluno drop column valorPagoCurso;