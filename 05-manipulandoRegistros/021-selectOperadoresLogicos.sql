use universidade_u;
select * from aluno;

select * from aluno where sexo = 'M' AND ativo_sn = 1 AND valor_pago_curso <= 625;

select * from aluno where sexo = 'F' OR idade >= 40;