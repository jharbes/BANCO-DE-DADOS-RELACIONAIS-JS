use universidade_u;

/* listar procedures do bd */
show procedure status where Db = 'universidade_u';

/* mostrar o conteúdo da procedure */
show create procedure universidade_u.proc_oi;

/* alterar procedure -> remover a procedure e criar novamente */

drop procedure universidade_u.proc_oi;

delimiter $$
CREATE  PROCEDURE `proc_oi`()
begin

select 'Oi, eu fui modificada' as msg;

end
$$
delimiter ;

call proc_oi();



/* -------------------- */
DELIMITER $$
CREATE DEFINER =`root`@`localhost` PROCEDURE `proc_oi`()
begin

	 select 'Oi, eu fui modificada!' as msg;
     
end$$
DELIMITER ;
