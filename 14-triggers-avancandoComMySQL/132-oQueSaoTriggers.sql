/*

O que sao Triggers?

	Uma trigger ou gatilho é uma ação que pode ser associado a um banco de dados
    ou a uma tabela para responder a eventos DDL ou DML.
    
    (associados ao banco de dados)
    Eventos DDL: Create Table, alter table, create procedure,
    create function , etc
    
    (associados as tabelas)
    Eventos DML: Insert, Update, Delete
    
    MySQL -> as triggers estão limitadas às instrucoes DML (insert, update, delete)

	SQL Server -> as triggers podem ser associadas às instrucoes DML ou DDL.
    
    ** IMPORTANTE: Podemos ter apenas uma trigger associada a cada evento e tabela,
    por exemplo: uma trigger para AFTER INSERT, uma trigger para BEFORE DELETE


sintaxe:
    
CREATE TRIGGER <tgr_name>
BEFORE/AFTER INSERT/DELETE/UPDATE ON <table>
FOR EACH ROW -- para cada linha afetada pelo evento INSERT/DELETE/UPDATE (podem afetar mais de uma linha)
BEGIN

	-- bloco de codigo da trigger
    
END


Tempo: antes ou depois da ação na tabela (BEFORE/AFTER)
Operação: responde a qual evento da tabela? (INSERT/DELETE/UPDATE)


Dentro do bloco de codigo temos acesso às duas seguintes tabelas que seguem abaixo:

NEW: acesso ao novo registro que está sendo inserido na tabela (insert)
OLD: acesso ao velho registro que está sendo excluído da tabela (delete)

*/