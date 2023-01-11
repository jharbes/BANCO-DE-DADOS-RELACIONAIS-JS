use universidade_u;

/* ceil - arredonda o valor para cima */
select ceil(17.4) as valor;
select ceil(17.0) as valor;

/* floor - arredonda o valor para baixo */
select floor(19.555) as valor;

/* truncate - trunca a fração */
select truncate(22.757333, 1) as valor;

/* round - arredondamento */
select round(55.752, 2) as valor;
select round(55.755, 2) as valor;
select round(55.759, 2) as valor;
select round(55.754, 2) as valor;
select round(55.744, 2) as valor;

/* < 5 = para baixo */
/* >= 5 = para cima */

select 
	nome, 
    ceil(valor_pago_curso) as valor 
from 
	aluno 
where 
	idaluno in(1, 4, 5);
    
    
select 
    round(avg(valor_pago_curso), 2) as valor_pago_curso 
from 
	aluno 
where 
	idaluno in(1, 4, 5);




