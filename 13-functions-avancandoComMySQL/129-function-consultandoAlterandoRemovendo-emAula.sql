use universidade_u;

-- listando as functions do banco de dados (sgbd)
show function status;

-- limitando o retorno com base um banco de dados especifico:
show function status where Db='universidade_u';

-- mostrar o conteudo de uma function
show create function func_data_ptbr;
show create function universidade_u.func_data_ptbr;

delimiter $$
CREATE FUNCTION `func_data_ptbr`(p_data datetime) RETURNS varchar(255) CHARSET utf8mb4
     DETERMINISTIC
     COMMENT 'A funcao serve para retornar datas no formato dd/mm/yyyy'
 begin
 
 	return date_format(p_data,'--%d/%m/%Y--');
 
 end
 $$
 delimiter ;
 
 -- para alterar a function é necessário remover a function e criá-la novamente
 
 -- como remover function:
 drop function universidade_u.func_data_ptbr;
 
 select func_data_ptbr('2017-03-27 00:00:00') as data_formatada; 