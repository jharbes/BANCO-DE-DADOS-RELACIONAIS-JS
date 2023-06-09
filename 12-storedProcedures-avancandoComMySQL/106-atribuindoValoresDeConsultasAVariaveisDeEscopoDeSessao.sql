use universidade_u;

set @x = 10;
set @y = 15;
set @Nome = 'Jorge';

set @y = 25;
set @resultado = @x + @y;

select @x;
select @y;
select @Nome as teste;

select @resultado as teste;

/* declar uma variável que contenha o cpf de um aluno */
set @cpf = '555.555.555-55';
select * from aluno;
/* descobrir o id do aluno */
set @idaluno = (select idaluno from aluno where cpf = @cpf);
/* recuperar os registros de telefones dos alunos */
select @idaluno;
select * from telefone where fk_idaluno = @idaluno;
