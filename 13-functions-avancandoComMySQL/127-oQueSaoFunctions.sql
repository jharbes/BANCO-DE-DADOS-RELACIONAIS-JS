/*

O que são Functions?

	Funções são rotinas que retornam valores ou tabelas.
    
	CREATE FUNCTION <nome_funcao> (<parametros>)
	RETURNS <tipo_de_dado_que_sera_retornado>
	BEGIN
		/* bloco de codigo da funcao
		RETURN <retorno>
		
	END

	SELECT
		<nome_funcao> (<parametros>)
	FROM
		<nome_funcao> (<parametros>)
        
        
*/

/*

IMPORTANTE!!!

No MySQL as functions retornam apenas valores.

	Em bancos de dados como o SQL Server, além de valores as functions
    também podem retornar tabelas
    
*/