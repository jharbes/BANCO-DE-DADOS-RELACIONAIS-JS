use universidade_u;

select * from gasto;

-- maneira de apagar os registros de uma tabela:

-- delete (deleta os registros da tabela)
-- drop table / create table (apaga a tabela e recria a tabela
-- truncate table (deleta os registros da tabela, porem zerando a numeracao da primary key)

truncate table gasto;

-- truncando a tabela onde está a fk
-- o sgbd só impede o truncate caso a tabela em questao seja referencia para outra tabela
-- no caso da tabela telefone isso nao ocorre, logo podemos apagar sem problema
select * from telefone;
truncate table telefone;

-- truncando a tabela referencia
select * from aluno;
truncate table aluno;
/*
0	30	16:16:03	truncate table aluno	Error Code: 1701. Cannot truncate a table 
referenced in a foreign key constraint (`universidade_u`.`telefone`, 
CONSTRAINT `fk_aluno_telefone`)	0.000 sec
*/

-- desativa a integridade relacional das foreign keys, ou seja, podera ser feito
-- , por exemplo, o truncamento da tabela aluno mesmo que na 
-- tabela telefone tenha um fk referencia
-- para a tabela aluno
set foreign_key_checks=0;

truncate table aluno;

-- reativa a integridade relacional das foreign keys
set foreign_key_checks=1;

truncate table curso;