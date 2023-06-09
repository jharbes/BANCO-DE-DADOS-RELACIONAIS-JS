/*

DECLARANDO VARIÁVEIS DO ESCOPO DE PARÂMETROS

CREATE PROCEDURE <procedure_name> (<parametros>)****
BEGIN

	ESCOPO LOCAL
    
END

-- A declaração das variáveis devem ser feitas através da instrução
-- IN / OUT ou INOUT

-- As variáveis declaradas no escopo de parâmetros não são precedidas
-- pelo caractere @

-- Após a declaração da variável é necessário informar o tipo
-- de dado suportado pela mesma (tipagem forte)

*/

-- caso seja omitida a informacao de tipo de entrada de um parametro
-- sera considerada o IN como default conforme está sendo feita no
-- caso do param1
delimiter $$
create procedure proc_variaveis_escopo_parametro(param1 int, out param2 varchar(100))
begin
	
    select param1, param2;
    set param2='Parâmetro 2 foi modificado e exportado pela procedure';
    
end
$$
delimiter ;

show procedure status where Db='universidade_u';

set @param2 = 'Parâmetro 2';
select @param2;

-- observe abaixo que o valor retornado é NULL pois só foi passado
-- a referência da variável e não ela em si
call proc_variaveis_escopo_parametro(100,@param2);

-- o valor contido na variavel @param2 foi modificado dentro da
-- procedure e esta com outro valor 
select @param2;