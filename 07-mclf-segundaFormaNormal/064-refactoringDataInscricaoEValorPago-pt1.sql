use universidade_u;

select data_inscricao_curso, valor_pago_curso from aluno;
select * from aluno_curso;

alter table aluno_curso add data_inscricao_curso date;
alter table aluno_curso add valor_pago_curso float(10,2);
