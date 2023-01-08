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

/*

As tabelas unique nao podem se repetir, excetuando o valor
null que podem haver em varias tuplas diferentes mesmo para colunas
com atributo unique

*/

-- prefixo opcional de acordo com a padronizacao utilizado pelo professor
-- constraint comecando por uc_ significa unique
-- estamos adicionando a constraint nesse momento para que seja utilizada
-- em dicionarios de dados mais tarde
-- o mesmo comando tambem determinara que cpf seja uma coluna unique
-- (nao pode ter seu valor repetido)
alter table aluno add constraint uc_aluno_cpf unique(cpf);

-- primeiro devemos modificar os campos das colunas onde eventualmente possam
-- haver dados repetidos em tuplas diferentes:
select * from aluno where cpf='333.111.111-11';
update aluno set cpf='333.111.111-19' where idaluno=3;

insert into aluno (sexo,idade,email,dataInscricaoCurso, valorPagoCurso, ativoSn, nome, cpf)
values ('F',25,'rosa@teste.com.br','2019-01-05',625,1,'Rosa','444.111.111-12');

-- adicionar a constraint unique para a coluna email
alter table aluno add constraint uc_aluno_email	unique(email);