use universidade_u;

drop procedure universidade_u.proc_ifelse;
call proc_ifelse();
show procedure status where Db = 'universidade_u';

delimiter $$
create procedure proc_ifelse()
comment 'Exemplo de uso dos condicionais ifelse'
begin
    
    declare idade int;
    
    set idade = (select
		timestampdiff(year, data_nascimento, curdate())
	from 
        aluno 
	where 
		idaluno = 5);
    
    if idade >= 0 and idade <= 15 then
         select 'Criança';
    elseif idade > 15 and idade <= 29 then
         select 'Jovem';
	elseif idade > 29 and idade <= 59 then
         select 'Adulto';
	else
         select 'Idoso';
    end if;
    
end
$$
delimiter ;
