use universidade_u;

/* tipagem forte / fraca */
set @ nome = 'Jorge';
set @nome = 10;
select @nome;
/* tipagem fraca */

delimiter $$
create procedure proc_variaveis_escopo_local1()
begin

	declare x int default 10;
    declare papagaio float(8,2);
    
    /*lógica procedure*/
    set papagaio = 20.45;
    set x = 'Jorge';
    /*tipagem forte */
    
	select x as variavel_escopo_local; 
 
end
$$
delimiter ;

show procedure status where Db = 'universidade_u';

call proc_variaveis_escopo_local1();

show procedure status where Db = 'universidade_u';
drop procedure universidade_u.proc_variaveis_escopo_local1;
