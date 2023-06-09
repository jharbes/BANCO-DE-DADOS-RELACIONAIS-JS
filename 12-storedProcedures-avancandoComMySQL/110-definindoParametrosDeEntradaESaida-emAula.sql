/*

DEFININDO PARÃMETROS DE ENTRADA E SAÍDA, abaixo:
	- IN indica entrada de parâmetro
    - OUT indica saída de parâmetro
    - INOUT indica a entrada e saída de parâmetro
    - TIPO indica o tipo de parâmetro
    - os parâmetros INOUT operam em TODOS os escopos (sessão, parâmetros e local)

CREATE PROCEDURE <procedure_name> (IN param1 TIPO, OUT param2 TIPO, INOUT param3 TIPO)
BEGIN

	-- bloco de código da procedure
    
END

-- observe abaixo que referência e valor do parâmetro são passados
-- para a procedure
CALL <procedure_name> (param1, @param2, @param3);

SELECT @param2, @param3;

*/

delimiter $$
create procedure proc_exemplo_parametros(
	in param1 int,
    out param2 varchar(50),
    inout param3 float(3,1)
)
begin
	
    select param1, param2, param3;
    
    set param2='Parâmetro 2 foi modificado';
    set param3=30.3;
    -- param1 será exibido pois é um parâmetro de entrada mas não terá sua
    -- referência passada, ou seja, não poderá alterar seu valor dentro da
    -- procedure
    
    -- param2 será exibido null, pois o valor não é passado, apenas a referência
	-- observe que o VALOR de param2 pode ser alterado e ter sua saída feita,
    -- porém ele não tem escopo dentro da procedure
    
    -- param3 acumula as duas funções, logo será exibido e TAMBÉM poderá ter seu
    -- valor alterado na saída pois também tera sua referência atrelada, pois é
    -- INOUT
    
end
$$
delimiter ;

show procedure status where Db='universidade_u';

drop procedure proc_exemplo_parametros;

set @p1=100;
set @p2='Parâmetro 2';
set @p3=70.5;

select @p1,@p2,@p3;

call proc_exemplo_parametros(@p1, @p2, @p3);

select @p1,@p2,@p3;

select @p1,@p2,round(@p3,1);