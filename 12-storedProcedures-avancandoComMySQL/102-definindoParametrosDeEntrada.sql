use universidade_u;

delimiter xyz
create procedure proc_media_ponderada(
	in nome varchar(100), 
    in p1 float(3,1), 
    in p2 float(3,1),
    in p3 float(3,1),
    in p4 float(3,1)
)
comment 'Efetua o cálculo de média ponderada:((p1*2)+(p2*2)+(p3*3)+(p4*3)) / 10'
begin

	/* nome do aluno, média ponderada */
    select 
        nome, 
	    round( (((p1*2)+(p2*2)+(p3*3)+(p4*3)) / 10), 1) as 'media_ponderada';

end
xyz
delimiter ;

show procedure status where Db = 'universidade_u';
drop procedure universidade_u.proc_media_ponderada;

call proc_media_ponderada('Jorge', 8, 7, 5, 9);
call proc_media_ponderada('João', 6, 7, 10, 8);
call proc_media_ponderada('Maria', 6.5, 4.2, 9.9, 8.7);
