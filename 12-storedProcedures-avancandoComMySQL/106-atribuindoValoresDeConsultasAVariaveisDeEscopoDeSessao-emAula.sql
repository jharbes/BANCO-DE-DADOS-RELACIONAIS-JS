use universidade_u;

select * from aluno;

-- declarar uma variavel que tenha o cpf de um aluno

set @cpf = '555.555.555-55';

-- na sequencia vamos utilizar esse cpf para descobrir o id de um aluno

-- so funcionara caso o retorno da consulta retorne um unico valor
-- como o exemplo abaixo
set @idaluno=(select idaluno from aluno where cpf=@cpf);

-- por fim com base na informacao de id nós vamos recuperar os registros
-- de telefone dos alunos
select @idaluno;

-- recuperamos o registro de telefone do aluno cujo id é @idaluno
select * from telefone where fk_idaluno=@idaluno;