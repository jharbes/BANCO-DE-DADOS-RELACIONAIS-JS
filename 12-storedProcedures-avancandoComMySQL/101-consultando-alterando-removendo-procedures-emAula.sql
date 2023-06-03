use universidade_u;

-- listar procedures de todos os banco de dados
show procedure status;

-- listar procedures com filtro de qual banco de dados
show procedure status where Db='universidade_u';

-- mostrar o conteudo da procedure
show create procedure proc_oi;
-- ou
show create procedure universidade_u.proc_oi;

-- procedure recuperada abaixo:
/*
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_oi`()
 begin
 	select 'Oi, você acabou de executar um procedimento que está armazenado no BD! Pode me chamar sempre que precisar!' as msg;
 end
*/


-- alterar procedure
-- caso a alteracao seja no bloco de comandos da procedure precisaremos remove-la e cria-la novamente.
drop procedure universidade_u.proc_oi;

delimiter $$
CREATE PROCEDURE `proc_oi`()
 begin
 	select 'Oi, eu fui modificada!' as msg;
 end
 $$
 delimiter ;
 
 call proc_oi();
 
 -- --------------------------------------------
 -- procedure copiada direto do mysql workbench clicando com o segundo
 -- botao do mouse na procedure -> copy to clipboard -> 
 -- create statement
 DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_oi`()
begin
 	select 'Oi, eu fui modificada!' as msg;
 end$$
DELIMITER ;
