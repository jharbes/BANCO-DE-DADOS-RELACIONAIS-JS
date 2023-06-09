use universidade_u;

drop procedure universidade_u.proc_ifelse;
call proc_ifelse();
show procedure status where Db = 'universidade_u';

delimiter $$
create procedure proc_ifelse()
comment 'Exemplo de uso dos condicionais ifelse'
begin

    declare idade int default 30;
    declare sexo char(1) default 'F';
    
    /* 15 >= 18 and M -> false */
	/* 30 >= 18 and M -> true */
    if idade >= 18 and sexo = 'M' THEN 
       select 'Ele possui mais de 18 anos de idade';
	end if;
     if idade < 18 and sexo = 'M' THEN 
       select 'Ele possui menos de 18 anos de idade';
	end if;
        /* 15 >= 18 and F -> false */
		/* 30 >= 18 and F -> true */
        if idade >= 18 and sexo = 'F' THEN 
       select 'Ela possui mais de 18 anos de idade';
	end if;
     if idade < 18 and sexo = 'F' THEN 
       select 'Ela possui menos de 18 anos de idade';
	end if;
    
end
$$
delimiter ;

/* -------------- */

delimiter $$
create procedure proc_ifelse()
comment 'Exemplo de uso dos condicionais ifelse'
begin

	declare sexo char(1);
    
    set sexo = (select sexo from aluno where idaluno = 3);
      
	if sexo = 'M' THEN 
       select 'O aluno é do sexo masculino';
	else
       select 'A aluna é do sexo feminino';
	end if;
  
    
end
$$
delimiter ;
