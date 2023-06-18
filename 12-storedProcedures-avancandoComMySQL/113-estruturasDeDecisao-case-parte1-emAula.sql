/*

ESTRUTURAS DE DECISAO (CASE) parte1

- Sintaxe simples para comparacoes por igualdade
- Sintaxe alternativa para comparacoes por expressoes logicas

CASE <valor>
	WHEN <comparacao> THEN
		<instrucao que deve ser executada se a comparacao for verdadeira>
	WHEN <comparacao> THEN
		<instrucao que deve ser executada se a comparacao for verdadeira>
	ELSE
		<instrucao a ser executada se nenhuma das comparacoes anteriores forem verdadeiras>
END CASE;

- observe que o ELSE é opcional

*/

use universidade_u;

delimiter $$
create procedure proc_case()
comment 'Exemplo de uso de case'
begin

	declare opcao int default 3;
    
    -- sintaxe simples
    case opcao
		when 1 then select 'Instrução a ser executada é a opção 1';
		when 2 then select 'Instrução a ser executada é a opção 2';
        when 3 then select 'Instrução a ser executada é a opção 3';
        when 4 then select 'Instrução a ser executada é a opção 4';
        else
			select 'Instrução a ser executada se nenhuma opção anterior for verdadeira';
    end case;
    
end
$$
delimiter ;

show procedure status where Db='universidade_u';

drop procedure universidade_u.proc_case;

call proc_case();