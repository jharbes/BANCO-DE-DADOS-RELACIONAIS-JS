use universidade_u;

-- adicionando a coluna dataNascimento à tabela aluno
alter table aluno add dataNascimento date;

select * from aluno;

desc aluno;

update aluno set dataNascimento ='1960-05-01' where idAluno=1;
update aluno set dataNascimento ='1980-06-12' where idAluno=2;
update aluno set dataNascimento ='1982-01-07' where idAluno=3;
update aluno set dataNascimento ='1970-03-04' where idAluno=4;
update aluno set dataNascimento ='1985-12-05' where idAluno=5;
update aluno set dataNascimento ='1988-01-20' where idAluno=6;