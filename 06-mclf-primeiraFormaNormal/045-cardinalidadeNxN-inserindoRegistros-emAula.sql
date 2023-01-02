use universidade_u;

select * from aluno;
select * from telefone;
select * from endereco;
select * from curso;
select * from aluno_curso;

desc aluno;
desc telefone;
desc endereco;
desc curso;
desc aluno_curso;

insert into aluno_curso(fk_idaluno,fk_idcurso)
values
(1,4),(1,3),(2,2),(3,1),(3,2),(3,3),(3,4),(4,1);

-- fazendo com que as foreign keys nao possam ser nulas
alter table aluno_curso modify fk_idaluno int not null;
alter table aluno_curso modify fk_idcurso int not null;