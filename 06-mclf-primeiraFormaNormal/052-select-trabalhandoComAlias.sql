use universidade_u;

select valor_pago_curso as valor_pago, nome from aluno;

select 
	max(valor_pago_curso) as maior_valor, 
    min(valor_pago_curso) as menor_valor, 
    avg(valor_pago_curso) as media, 
    sum(valor_pago_curso) as soma
from 
	aluno
where
	ativo_sn = 1;

