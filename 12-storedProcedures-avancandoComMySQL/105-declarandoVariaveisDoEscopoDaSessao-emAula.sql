-- Declarando variaveis do escopo da sessão

-- A sessão trata-se de cada instancia de conexão estabelecida com o banco
-- de dados para utilização do mesmo. Como por exemplo cada conexao do 
-- workbench, ou uma conexao de back end de uma linguagem de programacao
-- com o banco de dados para uso da mesma.

-- o nome das variaveis de SESSÃO sao precedidos por @

-- A instrução SET permite declarar variaveis de SESSÃO e atribuir valores

-- No SO Windows a instalação default do MySQL é case insensitive, ou seja
-- nao ha distincao entre caracteres maiusculas e minusculas

use universidade_u;

set @x = 10;
set @y = 15;
set @Nome = 'Jorge';

set @y=25;
set @resultado = @x + @y;

select @x;
select @y;
select @Nome as teste;
select @resultado as teste;

