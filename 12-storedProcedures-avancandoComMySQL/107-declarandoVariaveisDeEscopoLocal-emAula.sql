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

