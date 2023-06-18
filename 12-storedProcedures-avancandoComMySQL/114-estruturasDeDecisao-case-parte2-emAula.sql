/*

ESTRUTURAS DE DECISAO (CASE) parte2

- Sintaxe simples para comparacoes por igualdade
- Sintaxe alternativa para comparacoes por expressoes logicas

CASE
	WHEN <condicao 1> THEN
		<instrucao que deve ser executada se a condicao 1 for verdadeira>
	WHEN <condicao 2> THEN
		<instrucao que deve ser executada se a condicao 2 for verdadeira>
	ELSE
		<instrucao a ser executada se nenhuma das comparacoes anteriores forem verdadeiras>
END CASE;

- observe que o ELSE é opcional

*/

use universidade_u;

delimiter $$
create procedure proc_case2()
comment 'Exemplo de uso de case'
begin

	declare opcao int default 1;
    
    -- sintaxe alternativa
    case
		when opcao=1 then select 'Opção 1';
		when opcao=2 then select 'Opção 2';
        when opcao=3 then select 'Opção 3';
        else
			select 'Nenhuma das anteriores';
    end case;
    
end
$$
delimiter ;

show procedure status where Db='universidade_u';

drop procedure universidade_u.proc_case2;

call proc_case2();



-- segundo exemplo
delimiter $$
create procedure proc_case3()
comment 'Exemplo de uso de case'
begin

	declare opcao int default 1;
    
    -- sintaxe alternativa
    case
		when opcao>1 and opcao<=5 then select 'Opção 1';
		when opcao>5 and opcao<=10 then select 'Opção 2';
        when opcao=3 then select 'Opção 3';
        else
			select 'Nenhuma das anteriores';
    end case;
    
end
$$
delimiter ;

show procedure status where Db='universidade_u';

drop procedure universidade_u.proc_case3;

call proc_case3();



-- teceiro exemplo
delimiter $$
create procedure proc_case4()
comment 'Exemplo de uso de case 4'
begin

	declare data_teste date;
    set data_teste=curdate()+500; -- essa subtracao/adicao o SGBD entende que é em dias
    
    -- sintaxe alternativa
    case
		when data_teste=curdate() then select curdate() as data_atual, data_teste, 'Presente';
		when data_teste<curdate() then select curdate() as data_atual, data_teste, 'Passado';
        when data_teste>curdate() then select curdate() as data_atual, data_teste, 'Futuro';
        else
			select 'Nenhuma das anteriores';
    end case;
    
end
$$
delimiter ;

show procedure status where Db='universidade_u';

drop procedure universidade_u.proc_case4;

call proc_case4();