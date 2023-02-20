use universidade_u;

select * from aluno;

alter table aluno modify column ativo_sn int default 1;

insert into aluno(sexo, email, nome, cpf, data_nascimento)
values('M', 'jorge@teste.com.br', 'Jorge', '444.111.111-15', '1989-01-06');

insert into aluno(sexo, email, ativo_sn, nome, cpf, data_nascimento)
values('M', 'jamilton@teste.com.br', 0, 'Jamilton', '444.111.111-25', '1987-07-07');

select * from aluno_curso;

alter table aluno_curso modify column data_inscricao_curso datetime default current_timestamp;

insert into aluno_curso(fk_idaluno, fk_idcurso, valor_pago_curso)
values(7, 3, 720);
