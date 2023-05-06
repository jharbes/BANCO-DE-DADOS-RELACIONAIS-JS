use universidade_u;

-- auto_increment (valor padrão é 1);

select * from telefone;

insert into telefone(numero,fk_idaluno, tipo)
values('11 3333-4444', 1, 'res');

alter table telefone auto_increment = 353;

select max(idtelefone) + 1 from telefone;

select * from aluno;

insert into aluno(sexo, email, ativo_sn, nome, cpf, data_nascimento)
values('M', 'jorge@teste.com.br', 1, 'Jorge', '222.222.222-98', '1989-01-06');
