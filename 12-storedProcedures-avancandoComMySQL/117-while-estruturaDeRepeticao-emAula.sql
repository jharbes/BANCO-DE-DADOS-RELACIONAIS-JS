use universidade_u;

-- para auxilio no estudo da estrutura de repeticao while criaremos uma
-- tabela auxiliar
create table log(
	idlog int primary key auto_increment,
    log varchar(255)
);

select * from log;

delimiter $$
create procedure proc_while()
comment 'Exemplo de uso do while'
begin
	
    declare contador int default 1;
    
    -- operadores de comparacao, podem ser conectados por operadores lógicos
    while contador<10 do
		insert into log(log)values(contador);
        -- logica de parada do loop
        set contador=contador+1;
	end while;

end
$$
delimiter ;

show procedure status where Db='universidade_u';

call proc_while();

select * from log;