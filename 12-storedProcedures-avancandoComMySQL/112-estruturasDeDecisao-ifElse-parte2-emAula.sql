/*

ESTRUTURAS DE DECISAO (IF/ELSE) parte 2

IF <condicao1> THEN
	<instrucao a ser executada se a condicao1 for verdadeira>
ELSEIF <condicao2> THEN
	<instrucao a ser executada se a condicao2 for verdadeira>
ELSEIF <condicao3> THEN
	<instrucao a ser executada se a condicao3 for verdadeira>
ELSE
	<instrucao a ser executada se nenhuma das anteriores for verdadeira>
END IF;

*/

delimiter $$
create procedure proc_ifelse4()
comment 'Exemplo de uso de condicionais ifelse numero 4'
begin
    
    declare idade int default 25;
    
    if idade>=0 and idade<=15 then
		select 'Criança';
	elseif idade<=29 then
		select 'Jovem';
	elseif idade<=59 then
		select 'Adulto';
	else
		select 'Idoso';
	end if;
    
end
$$
delimiter ;

drop procedure universidade_u.proc_ifelse4;

call proc_ifelse4();



delimiter $$
create procedure proc_ifelse5()
comment 'Exemplo de uso de condicionais ifelse numero 5'
begin
    
    declare idade int;
    
    set idade=(select timestampdiff(year,data_nascimento,curdate()) from aluno where idaluno=5);
    
    if idade>=0 and idade<=15 then
		select 'Criança';
	elseif idade<=29 then
		select 'Jovem';
	elseif idade<=59 then
		select 'Adulto';
	else
		select 'Idoso';
	end if;
    
end
$$
delimiter ;

drop procedure universidade_u.proc_ifelse5;

select timestampdiff(year,data_nascimento,curdate()) from aluno where idaluno=5;

call proc_ifelse5();