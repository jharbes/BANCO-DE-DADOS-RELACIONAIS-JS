use universidade_u;

delimiter $$
create procedure proc_loop()
comment 'Exemplo de uso do loop'
begin
	
    -- temos que criar um rotulo para o loop por meio de um <rotulo>: loop
    -- sairemos do loop por meio da expressao leave <rotulo>;
    -- e finalizaremos por meio de um end loop <rotulo>;
    
    declare z int default 1;
    declare resultado varchar(20);
    
    loop_tabuada: loop
		set resultado=concat('2 x ', z, ' = ', (2*z));
		insert into log(log)value(resultado);
        set z=z+1;
        if z>10 then
			leave loop_tabuada;
		end if;
    end loop loop_tabuada;
    
end
$$
delimiter ;

show procedure status where Db='universidade_u';

select * from log;

drop procedure universidade_u.proc_loop;

truncate table log;

call proc_loop();