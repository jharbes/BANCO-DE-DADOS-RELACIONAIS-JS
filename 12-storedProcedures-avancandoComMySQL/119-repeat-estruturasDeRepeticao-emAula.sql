use universidade_u;

delimiter $$
create procedure proc_repeat()
comment 'Exemplo de uso do repeat'
begin
	
    declare z int default 1;
    declare resultado varchar(20);
    
    repeat
		set resultado=concat('2 x ', z, ' = ', (2*z));
		insert into log(log)value(resultado);
        set z=z+1;
    until z>10 end repeat; 
    
end
$$
delimiter ;

show procedure status where Db='universidade_u';

truncate table log;

call proc_repeat();

select * from log;