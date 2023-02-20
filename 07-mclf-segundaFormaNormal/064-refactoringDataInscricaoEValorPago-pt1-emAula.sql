use universidade_u;

select * from aluno;
select * from aluno_curso;

-- criando ambas as colunas na tabela aluno_curso
alter table aluno_curso add dataInscricaoCurso date;
alter table aluno_curso add valorPagoCurso float(10,2);

