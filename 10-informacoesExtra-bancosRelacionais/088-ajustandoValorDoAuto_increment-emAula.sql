use universidade_u;

select * from aluno;
insert into aluno(sexo,email,ativoSn,nome,cpf,dataNascimento)
values('M','jorge@teste.com.br',1,'Jorge','222.222.222-98','1989-01-06');

-- auto_increment (valor padrao é 1)

select * from telefone;
insert into telefone(numero,fk_idaluno,tipo) values
('11 3333-4444',1,'res');

-- alterando o valor do auto_increment, assim feito um novo insert ele virá com esse
-- valor setado manualmente
-- so funciona para valores acima do maior valor de id, caso seja menor nao
-- sera considerado
alter table telefone auto_increment=353;

select max(idTelefone)+1 from telefone;

insert into telefone(idTelefone,numero,fk_idaluno,tipo) values
(300,'11 3333-4444',1,'res');