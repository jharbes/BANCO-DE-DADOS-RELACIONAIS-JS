select nome,idade,telefone,valorPagoCurso from aluno where valorPagoCurso<600;

select nome,idade,telefone,valorPagoCurso from aluno
where valorPagoCurso<600 and idade>35; -- retorno vazio

select nome,idade,telefone,valorPagoCurso from aluno
where valorPagoCurso<600 or idade>35; -- retorna tres elementos