/*

DECLARANDO VARIAVEIS DE ESCOPO LOCAL

- A declaracao de variaveis de escopo local sao variaveis
 declaradas dentro do bloco "BEGIN E END" conforme abaixo:

CREATE PROCEDURE <procedure_name> (<parametros>)
BEGIN

	ESCOPO LOCAL
    
END

- As variaveis de escopo local existem apenas dentro desse
escopo mencionado anteriormente (sendo PROCEDURE, FUNCTION,
TRIGGER ou outro tipo), para cada uma das chamadas é criado um
escopo local diferente.

- A declaracao de variaveis de escopo local devem ser feitas atraves
da instrucao DECLARE

- As variaveis declaradas no escopo local NÃO sao precedidas pelo
caractere @

- Apos a declaracao da variavel é necessario informar o tipo de dado
suportado pela mesma (tipagem forte para escopo local)

- A atribuicao de um valor inicial para a variavel de escopo local é
feita atraves da instrucao DEFAULT

*/

drop procedure universidade_u.proc_variaveis_escopo_local1;

delimiter $$
create procedure proc_variaveis_escopo_local1()
begin
	-- declaramos x e ja indicamos o valor inicial de 10 inteiro
    -- declaramos papagaio e colocamos como float mas sem indicar
    -- seu valor inicial
    -- tipagem forte
	declare x int default 10;
    declare papagaio float(8,2);
    
    -- logica da procedure, colocamos o valor da variavel papagaio como
    -- 20.25, para isso usamos o set
    set papagaio = 20.45;
    
    select papagaio as variavel_escopo_local;
end
$$
delimiter ;

show procedure status where Db='universidade_u';

call proc_variaveis_escopo_local1();


-- observe que no caso das variaveis de escopo de sessao a tipagem
-- é fraca e pode ser alterada dinamicamente
set @nome = 'Jorge';
set @nome = 10;
select @nome;