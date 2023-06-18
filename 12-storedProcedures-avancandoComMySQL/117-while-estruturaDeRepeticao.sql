use universidade_u;

create table log(
	idlog int primary key auto_increment,
    log varchar(255)
);

delimiter $$
create procedure proc_while()
comment 'Exemplo de uso do while'
begin
	
    declare contador int default 1;
    
    /* operadores de compara��o, podem ser conectados por operadores l�gicos */
	while contador < 10 do 
    
    insert log(log)values(contador);
    
    /*logica de parada do loop */
    set contador = contador + 1;
    
    end while;
    
end
$$
delimiter ;

show procedure status where Db = 'universidade_u';

select * from log;

call proc_while();
