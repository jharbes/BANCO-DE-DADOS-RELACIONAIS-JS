use universidade_u;

select * from aluno;

-- comando desc mostra a estrutura da tabela desejada
desc aluno;

-- comando add inclui colunas na tabela
alter table aluno add cpf varchar(11);

-- posiciona a coluna criada depois da coluna idade na estrutura da tabela
-- caso seja omitido o after a coluna sera incluida no fim da tabela
alter table aluno add email varchar(150) after idade; 

-- usaremos agora a instrucao modify para modificar uma coluna
-- cpf de varchar(11) para varchar(14)
alter table aluno modify column cpf varchar(14);

-- a instrucao drop pode ser utilizado para remover uma coluna da tabela
alter table aluno drop column cpf;

alter table aluno add cpf varchar(14) after email;