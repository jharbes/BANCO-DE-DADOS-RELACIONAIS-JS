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

-- mostrando que com a atual configuracao podemos ter valores
-- nulos para as colunas abaixo
insert into telefone (numero,fk_idaluno,tipo)
values (null,null,null);

select * from telefone where idTelefone=7;
delete from telefone where idTelefone=7;

-- vamos agora modificar as colunas para que elas nao aceitam
-- valores nulos, mas para isso precisaremos primeiro apagar
-- os registros que tem seu valor nulo nas colunas antes que elas
-- possam ser alteradas conforme acima foi feito.
alter table telefone modify column numero varchar(20) not null;
alter table telefone modify column tipo enum('res','com','cel') not null;
alter table telefone modify column fk_idaluno int not null;