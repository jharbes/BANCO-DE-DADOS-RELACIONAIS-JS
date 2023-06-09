/*

ESTRUTURAS DE DECISAO (IF/ELSE) parte 1

- <condicao> suporta operadores de comparacao conectados por operadores
logicos além de valores recuperados de consultas

IF <condicao> THEN
	<instrucao a ser executada se a condicao for verdadeira>
ELSE
	<instrucao a ser executada se a condicao for falsa>
END IF;

- a instrução ELSE é opcional

*/

use universidade_u;

delimiter $$
create procedure proc_ifelse()
comment 'Exemplo de uso de condicionais ifelse'
begin

	declare idade int default 30;
    
    if idade>=18 then
		select 'Maior de idade';
	end if;
    
end
$$
delimiter ;

show procedure status where Db='universidade_u';

drop procedure universidade_u.proc_ifelse;

call proc_ifelse();