use universidade_u;

alter table aluno add constraint uc_aluno_cpf unique(cpf);
select * from aluno where cpf = '333.111.111-11';
update  aluno set cpf = '333.111.111-19' where idaluno = 3;
select * from aluno;

/* Tentativa de insert com cpf repetido */
insert into aluno(sexo, idade, email, data_inscricao_curso,
valor_pago_curso, ativo_sn, nome, cpf)
values('F', 25, 'rosa@teste.com.br', '2019-01-05',
625, 1, 'Rosa', '444.111.111-11');

/* Insert com um novo cpf */
insert into aluno(sexo, idade, email, data_inscricao_curso,
valor_pago_curso, ativo_sn, nome, cpf)
values('F', 25, 'rosa@teste.com.br', '2019-01-05',
625, 1, 'Rosa', '444.111.111-11');

desc aluno;
select * from aluno;

alter table aluno add constraint uc_aluno_email unique(email);








 