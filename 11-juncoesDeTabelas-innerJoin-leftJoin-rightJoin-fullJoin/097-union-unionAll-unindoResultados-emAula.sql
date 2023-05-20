/*

UNION e UNION ALL - Unindo Resultados

- Utilizado para unior os resultados de consultas diferentes
- As querys devem ter o mesmo número de colunas
- As colunas devem estar na mesma ordem
- As colunas devem ser do mesmo tipo (dependendo do banco de dados)

SELECT <projecoes> FROM <tabelas> WHERE <filtros>
	UNION / UNION ALL
SELECT <projecoes> FROM <tabelas> WHERE <filtros>
	UNION / UNION ALL
SELECT <projecoes> FROM <tabelas> WHERE <filtros>
	ORDER BY <colunas>
    
*/

use universidade_u;

/*

union - distinct - evita que registros duplicados sejam retornados na consulta
union all - nao faz distinct

*/

-- mesmo numero de colunas
select 100
union all
select 100,300;

select 100,500
union all
select 100,300;

select 100,500
union all
select 100,300
union all
select 500,700;


-- mesma ordem, no caso do mysql ele suporta mesmo com alteracao dos tipos
-- teriamos problema no sql server, pois os tipos das colunas devem ser iguais
select 100,200,'abacaxi'
union all
select 500,'uva',700;

select 100 as c1,200 as c2,'abacaxi' as c3
union all
select 500,'uva',700;

-- union (distinct) x union all (sem distinct)
-- observe que no caso do union 'morango' nao se repetira
select 'morango' as c1
union
select 'uva' as c1
union
select 'morango' as c1
union
select 'abacaxi' as c1;

select 'morango' as c1
union all
select 'uva' as c1
union all
select 'morango' as c1
union all
select 'abacaxi' as c1;

select 'morango' as c1
union
select 'uva' as c1
union all
select 'morango' as c1
union all
select 'abacaxi' as c1;

select 'morango' as c1
union
select 'uva'
union all
select 'morango'
union all
select 'abacaxi'
order by c1;


-- enviar um e-mail para todos os alunos e professores
select email from aluno
union /* distinct, evita uso de emails duplicados */
select email from professor;


-- adicionamos a informacao estatica com a tabela informando se cada um
-- dos emails pertencem a um professor ou a um aluno
select email,'aluno' from aluno
union /* distinct, evita uso de emails duplicados */
select email,'professor' from professor;

-- ordenando pelo email
select email,'aluno' from aluno
union /* distinct, evita uso de emails duplicados */
select email,'professor' from professor
order by email;


select email,'aluno' from aluno where sexo='f'
union /* distinct, evita uso de emails duplicados */
select email,'professor' from professor where idprofessor in (2,4,6,8)
order by email;