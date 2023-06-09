use universidade_u;

/*escopo de se��o*/

/*escopo de par�metros*/

/*escopo local*/

delimiter $$
create procedure proc_exemplo_parametros(
     in param1 int,
     out param2 varchar(50),
     inout param3 float(3,1)
)
begin
    select param1, param2, param3;
    
    set param2 = 'Par�metro 2 foi modificado';
    set param3 = 30.3;
    /*
    param1 - ser� exibido pois � um par�metro de entrada
    param2 - ser� exibido null, pois o valor n�o � passado
    � passado apenas a sua refer�ncia.
    param3 - ser� exibido 70.5, pois � um par�metro de entrada e vai
    permitir alterar o valor da vari�vel de sess�o, pois � uma refer�ncia.
    */
end
$$
delimiter ;

show procedure status where Db = 'universidade_u';
drop procedure universidade_u.proc_exemplo_parametros;

set @p1 = 100;
set @p2 = 'Par�metro 2';
set @p3 = 70.5;

select @p1, @p2, round(@p3,1);

call proc_exemplo_parametros(@p1, @p2, @p3);
