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

	declare idade int default 15;
    declare sexo char(1) default 'M';
    
    if idade>=18 and sexo='M' then
		select 'Ele é maior de idade';
	end if;
    
    if idade<18 and sexo='M' then
		select 'Ele é menor de idade';
	end if;
    
    if idade>=18 and sexo='F' then
		select 'Ela é maior de idade';
	end if;
    
    if idade<18 and sexo='F' then
		select 'Ela é menor de idade';
	end if;
    
end
$$
delimiter ;

show procedure status where Db='universidade_u';

drop procedure universidade_u.proc_ifelse;

call proc_ifelse();



delimiter $$
create procedure proc_ifelse2()
comment 'Exemplo de uso de condicionais ifelse numero 2'
begin
    
    declare idade int default 15;
    
    if idade>=18 and (select sexo from aluno where idaluno=4)='M' then
		select 'Ele é maior de idade';
	end if;
    
    if idade<18 and (select sexo from aluno where idaluno=4)='M' then
		select 'Ele é menor de idade';
	end if;
    
    if idade>=18 and (select sexo from aluno where idaluno=4)='F' then
		select 'Ela é maior de idade';
	end if;
    
    if idade<18 and (select sexo from aluno where idaluno=4)='F' then
		select 'Ela é menor de idade';
	end if;
    
end
$$
delimiter ;

select * from aluno;

drop procedure universidade_u.proc_ifelse2;

call proc_ifelse2();



delimiter $$
create procedure proc_ifelse3()
comment 'Exemplo de uso de condicionais ifelse numero 3'
begin
    
    declare sexo char(1);
    
    set sexo=(select sexo from aluno where idaluno=3);
    
    if sexo='M' then
		select 'Ele é homem';
	else
		select 'Ela é mulher';
	end if;
    
end
$$
delimiter ;

select sexo from aluno where idaluno=3;

drop procedure universidade_u.proc_ifelse3;

call proc_ifelse3();