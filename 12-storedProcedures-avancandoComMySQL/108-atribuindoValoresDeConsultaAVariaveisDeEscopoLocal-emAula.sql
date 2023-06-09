drop procedure universidade_u.proc_variaveis_escopo_local2;

delimiter $$
create procedure proc_variaveis_escopo_local2()
begin

	declare total_professores int;
    
    set total_professores=(select count(*) from professor);
    
    select total_professores as teste;
end
$$
delimiter ;

-- ou entao podemos fazer tambem de outra maneira conforme abaixo:

delimiter $$
create procedure proc_variaveis_escopo_local2()
begin

	declare total_professores int;
    
    select count(*) into total_professores from professor;
    
    select total_professores as teste;
end
$$
delimiter ;

show procedure status where Db='universidade_u';

call proc_variaveis_escopo_local2();