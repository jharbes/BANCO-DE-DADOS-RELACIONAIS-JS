/*

O que são Stored Procedures?

	Procedimentos armazenados (stored procedures) são pequenos programas armazenados no banco de dados que podem ser chamados a qualquer momento.
	
CREATE PROCEDURE <procedure_name> (<parametros>)
BEGIN
	<bloco de código do procedure>
END

CALL <procedure_name> (<parametros>)



	Regras de negócio
	
	- Desvantagem: Necessidade de reescrita dos procedimentos para migração do banco de dados (MySQL, SQL Server, Oracle,etc)
	
	- Vantagem: Por estarem armazenados no banco de dados é mais fácil trocar as tecnologias de aplicação (Java,PHP,Python,etc)