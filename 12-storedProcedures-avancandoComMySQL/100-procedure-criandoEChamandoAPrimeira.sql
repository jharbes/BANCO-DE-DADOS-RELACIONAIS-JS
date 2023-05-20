use universidade_u;

delimiter $$
create procedure proc_oi()
begin

select 'Oi, você acabou de executar um procedimento que está armazenado no bd! Sempre que você precisar é só me chamar. ' as msg;

end
$$
delimiter ; 

CALL proc_oi();

/* processos bem definidos que são executados repetidas vezes */
