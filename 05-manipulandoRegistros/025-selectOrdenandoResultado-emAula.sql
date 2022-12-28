use universidade_u;

/*

ORDEM CORRETA PARA CONSULTAS EM MYSQL

SELECT
	<coluna(s)>
FROM
	<tabela(s)>
WHERE
	<filtro(s)>
ORDER BY
	idade, ASC, nome DESC;
    
(no caso de omissao do tipo de ordenacao sera usada a ordenacao
default que é a ascendente)

*/

select * from aluno;

-- o retorno sera a lista em ordem alfabetica de nomes
select * from aluno order by nome asc;

-- ordem crescente de valores pagos no curso
select * from aluno order by valorPagoCurso asc;

-- ordem decrescente de valores pagos no curso
select * from aluno order by valorPagoCurso desc;

-- agora o retorno inicial sera em ordem alfabetica de sexo,
-- dentre esses agoras selecionados havera o retorno em ordem
-- descrescente de valor pago para o curso
select * from aluno order by sexo asc, valorPagoCurso desc;