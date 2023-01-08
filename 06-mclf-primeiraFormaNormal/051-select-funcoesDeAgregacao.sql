use universidade_u;

/* count */
select * from aluno;
select count(*) from aluno;
select count(*) from aluno where sexo = 'F';
select count(distinct nome) from aluno;

/* max */
select max(valor_pago_curso) from aluno;
select max(valor_pago_curso) from aluno where idade > 40;
select max(valor_pago_curso) from aluno where idade < 40;

/* min */
select min(valor_pago_curso) from aluno;
select min(valor_pago_curso) from aluno where ativo_sn != 0;

/* avg */
select avg(valor_pago_curso) from aluno;
select avg(valor_pago_curso) from aluno where nome = 'José';

/* sum */
select sum(valor_pago_curso) from aluno;
select sum(valor_pago_curso) from aluno where nome = 'José';


select 
	max(valor_pago_curso), 
    min(valor_pago_curso), 
    avg(valor_pago_curso), 
    sum(valor_pago_curso)  
from 
	aluno
where
	ativo_sn = 1;

