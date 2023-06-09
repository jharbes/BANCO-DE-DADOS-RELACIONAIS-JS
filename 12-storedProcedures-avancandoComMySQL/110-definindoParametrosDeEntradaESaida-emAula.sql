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

end
$$
delimiter ;