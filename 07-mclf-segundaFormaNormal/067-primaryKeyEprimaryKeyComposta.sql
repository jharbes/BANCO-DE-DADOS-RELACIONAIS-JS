use universidade_u;

alter table aluno_curso drop column id_alunocurso;

select * from aluno_curso;
desc aluno_curso;

alter table aluno_curso add constraint 
pk_aluno_curso primary key(fk_idaluno, fk_idcurso, data_inscricao_curso);
