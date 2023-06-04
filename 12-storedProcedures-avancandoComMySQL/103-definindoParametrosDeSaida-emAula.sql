use universidade_u;

-- Definindo parametros de saida, observe o que o OUT no segundo parametro da
-- procedure refere-se a um parametro de SAIDA

/*

CREATE PROCEDURE <procedure_name> (IN <parametro1> <tipo_parametro1, OUT <parametro2> <tipo_parametro2>)
BEGIN
	
    <bloco de codigo da procedure>
    
END


-- deve se manter a mesma ordem dos parametros da criacao
-- observe o @ no segundo parametro, isso significa que esse parametro2 sera o parametro
-- de saida dessa procedure e após a chamada poderemos utiliza-lo conforme nossa necessidade
CALL <procedure_name> (parametro1,@parametro2)

SELECT @param2;

*/

-- criando procedure para processar media ponderada
-- observe a criacao de um comentario na procedure, importante para
-- lembrar posteriormente da logica da procedure ou informar a terceiros
-- a sua serventia
delimiter $$
create procedure proc_resumo(out total_professores int, out total_alunos int)
comment 'Resumo do total de alunos e professores'
begin
	
    -- total de professores, observe que o comando 'into' colocara o retorno da
    -- consulta dentro da variavel total_professores para que possamos utilizar
    -- posteriormente dentro da mesma instancia de conexao com o bando de dados
    select count(*) into total_professores from professor;
    
    -- total de alunos, observe que o comando 'into' colocara o retorno da
    -- consulta dentro da variavel total_alunos para que possamos utilizar
    -- posteriormente dentro da mesma instancia de conexao com o bando de dados
    select count(*) into total_alunos from aluno;

end
$$
delimiter ;

-- mostra as procedures existentes no banco de dados universidade_u
show procedure status where Db='universidade_u';

-- o nome dos parametros podem ser escolhidos livremente desde que estejam dentro
-- das demais regras pertinentes para parametros no SGBD atual.
call proc_resumo(@x, @y);


-- agora poderemos usar os parametros retornados conforme for necessario
select @x, @y;
select @x as total_professores, @y as total_alunos;