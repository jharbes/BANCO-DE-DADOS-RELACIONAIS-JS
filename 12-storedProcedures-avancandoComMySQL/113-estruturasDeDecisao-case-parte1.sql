use universidade_u;

delimiter $$
create procedure proc_case()
comment 'Exemplo de uso do case'
begin

   declare opcao int default 17;
   
   /* sintaxde simples */
   case opcao
       when 1 then select 'Instru��o a ser executada � a op��o 1';
	   when 2 then select 'Instru��o a ser executada � a op��o 2';
	   when 3 then select 'Instru��o a ser executada � a op��o 3';
	   when 4 then select 'Instru��o a ser executada � a op��o 4';
       else 
           select 'Instru��o a ser executada se nenhuma op��o anterior for verdadeira';
   end case;
   
end
$$
delimiter ;

show procedure status where Db = 'universidade_u';
drop procedure universidade_u.proc_case;

call proc_case();
