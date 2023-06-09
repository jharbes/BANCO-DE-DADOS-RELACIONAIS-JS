use universidade_u;

delimiter $$
create procedure proc_case()
comment 'Exemplo de uso do case'
begin

   declare opcao int default 17;
   
   /* sintaxde simples */
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

show procedure status where Db = 'universidade_u';
drop procedure universidade_u.proc_case;

call proc_case();
