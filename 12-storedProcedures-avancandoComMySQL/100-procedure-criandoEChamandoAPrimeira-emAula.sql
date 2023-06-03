use universidade_u;

-- criando a procedure - cada instrucao dos procedures deve ser delimitada
-- por ponto e virgula (;)

-- como o procedure possui diversos delimitadores ponto e virgula (;) usamos
-- o dolár dolár ($$) como novo delimitador por meio dos comandos listados abaixo
-- assim ele entende que ela começa a partir do primeiro $$ e termina no
-- proximo $$

-- importante salientar que após efetuado o comando devemos devolver o
-- delimitador para o ponto e virgula (;), por isso terminado o procedure
-- efetuaremos o comando delimiter ;

/*
delimiter $$ 
create procedure <nome_procedure>(<parametros>)
begin
	
    select preco from produto;
    
    <instrução 1>;
    <instrução 2>;
    <instrução 3>;
    
    <logica do procedimento>;
    
end
$$
delimiter ;
*/

-- após feita a procedure utilizaremos o comando call para chamá-la e executá-la
/*
CALL <nome_procedure>(<parametros>);
*/

delimiter $$
create procedure proc_oi()
begin
	select 'Oi, você acabou de executar um procedimento que está armazenado no BD! Pode me chamar sempre que precisar!' as msg;
end
$$
delimiter ;

call proc_oi();

/*
processos bem definidos que sao executados repetidas vezes
podemos criar uma procedure para facilitar o dia a dia
*/