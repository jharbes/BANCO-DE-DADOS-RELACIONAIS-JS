use universidade_u;

delimiter $$
create procedure proc_oi()
begin

select 'Oi, voc� acabou de executar um procedimento que est� armazenado no bd! Sempre que voc� precisar � s� me chamar. ' as msg;

end
$$
delimiter ; 

CALL proc_oi();

/* processos bem definidos que s�o executados repetidas vezes */
