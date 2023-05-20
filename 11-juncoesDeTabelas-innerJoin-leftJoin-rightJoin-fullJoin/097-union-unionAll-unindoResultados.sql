use universidade_u;

/*
union - distinct
union all - não faz distinct
*/

/*mesmo número de colunas*/
select 100, 500
union all
select 100, 300
union all
select 500, 700;

/*mesma ordem*/
select 100 as c1, 200 as c3, 'abacaxi' as c3
union
select 500, 'uva', 700;

/* union (distinct) x union all */
select 'morango' as c1
union
select 'uva'
union all
select 'morango'
union all
select 'abacaxi'
order by c1;

/* enviar um e-mail para todos os alunos e professorer */
select email, 'aluno' from aluno where sexo = 'f'
union /*distinct*/
select email, 'professor' from professor where idprofessor in (2,4,6,8)
order by email;

